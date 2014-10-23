/**
 * history componenet
 */
(function(host, undef) {

  var historyApis = host.historyApis = new ChromeWebUIApis({
    methods: 'getHasHistoryDays,getHistory,queryHistory,removeVisits,clearBrowsingData',
    onerror: function(ev) {
      console.log('error:', arguments);
    },
    onbefore: function(ev) {
      console.log((new Date).toTimeString(), 'before call:' + ev.methodName, ev.args);
    },
    onbeforeCallback: function(ev) {
      console.log((new Date).toTimeString(), 'before callback:' + ev.methodName, ev.args);
    },
    onafterCallback: function(ev) {
      console.log((new Date).toTimeString(), 'after callback:' + ev.methodName, ev.args);
    }
  });

  function history(opts) {
    this.opts = opts || {};
    CETH.createEvents(this, history.EVENTS);
  }

  history.prototype = {
    render: function(items, cb) {
      var opts = this.opts || {},
      sortby = typeof opts.sortby == 'function' ? opts.sortby() : opts.sortby,
      offday = typeof opts.offday == 'function' ? opts.offday() : opts.offday,
      searchtext = typeof opts.searchtext == 'function' ? opts.searchtext() : opts.searchtext,
      $stage = $(opts.stage),
      self = this,
      tmplSiteHeaderFn = doT.template($(opts.tmplSiteHeader).html()),
      tmplHistoryItemFn = doT.template($(opts.tmplHistoryItem).html());

      function addPrefixZero(num) {
        return (num < 10 ? '0' : '') + num;
      }

      /**
       * Generates a CSS url string.
       * @param {string} str The URL to generate the CSS url for.
       * @return {string} The CSS url string.
       */
      function getCssUrl(str) {
        // http://www.w3.org/TR/css3-values/#urls
        // Parentheses, whitespace characters, single quotes (') and double quotes (")
        // appearing in a URL must be escaped with a backslash so that
        // the resulting value is a valid URL token
        return str.replace(/(\(|\)|\s|\'|\"|\\)/g, '\\$1');
      }

      function joins(sortby, searchtext, items){
        var htmls = '';

        var prevItem;
        items.forEach(function(item){
          item.url = htmlEncode(item.url);
          if (/^file:\/\/\//.test(item.url)) {
            item.domain = item.url.replace(/^file:\/\/\//,'');
          }
          item.imgurl = item.url.replace(/(\')/g, '\\$1');
          item.title = htmlEncode(item.title);

          if (sortby == 'site' && (!prevItem || item.domain != prevItem.domain)) {
            htmls += tmplSiteHeaderFn(item);
          }

          var date = new Date(item.time);
          item.strTime = date.toTimeString().substr(0, 5);
          if (searchtext) {
            item.strTime = addPrefixZero(date.getMonth() + 1) + '月' +
                           addPrefixZero(date.getDate()) + '日 ' + item.strTime;
          }
          htmls += tmplHistoryItemFn(item);
          prevItem = item;
        });
        return htmls;
      }

      function onReceive(obj, items) {
        $stage.empty();
        var s = Date.now();

        if (sortby == 'site') {
          items = items.sort(function(a, b) {
            return a.domain.localeCompare(b.domain);
          });
        }
        console.log('sort:', Date.now() - s);

        if (searchtext) {
          $stage.addClass('bysearch');
        } else {
          $stage.removeClass('bysearch');
        }

        var htmlStr = joins(sortby, searchtext, items);
        cb ? cb(htmlStr) : $stage.append(htmlStr);
        CETH.fire(self, 'AfterRender', {items:items});
      }

      if (searchtext) {
        historyApis.queryHistory(searchtext, 0, 0, 0, 0, onReceive, 'historyResult');
      } else {
        historyApis.getHistory(0 - offday, onReceive, 'getHistoryComplete');
      }
    }
  };

  history.EVENTS = 'AfterRender';
  host.History = history;

})(window);
