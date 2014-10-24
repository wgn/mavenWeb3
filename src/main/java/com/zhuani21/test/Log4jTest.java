package com.zhuani21.test;

import java.util.ArrayList;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class Log4jTest {

	Logger log = Logger.getLogger(Log4jTest.class);

	public static void main(String[] args) {
		//PropertyConfigurator.configure("log4j.properties");
		
		new Log4jTest().t();
	}

	public void t() {
		Object al = null;
		try {
			String a  = (String) null;
			Logger o = (Logger)al;
		} catch (Exception e) {
			log.error(ExceptionUtils.getFullStackTrace(e));
//			for(StackTraceElement ste:e.getStackTrace()){
//				log.error(ste);
//			}
		}

	}

}
