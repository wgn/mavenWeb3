public class TestCovert1{
	public static void main(String args[]){
		int i=1,j=12;
		float f1 = (float)0.1;
		float f2 = 123;
		long l1 = 123345678,l2 = 8888888888l;
		double d1 = 2e20,d2=124;
		byte b1 = 1,b2 = 2,b3 = 127;
		j = j+10;
		i = i/10;
		i = (int)(i*0.1);
		char c1 = 'a',c2 = 125;
		byte b = (byte)(b1-b2);
		char c = (char)(c1+c2-1);
		float f3 = f1+f2;
		float f4 = (float)(f1+f2*0.1);
		double d = d1*i+j;
		float f = (float)(d1*5+d2);	
		System.out.println("i=" + i);
		System.out.println("j=" + j);
		System.out.println("f1=" + f1);
		System.out.println("f2=" + f2);
		System.out.println("f3=" + f3);
		System.out.println("f4=" + f4);
		System.out.println("d1=" + d1);
		System.out.println("l1=" + l1);
		System.out.println("l2=" + l2);
		System.out.println("d1=" + d1);
		System.out.println("b1=" + b1);
		System.out.println("b2=" + b2);
		System.out.println("b3=" + b3);
		System.out.println("c1=" + c1);
		System.out.println("c2=" + c2);
		
		
	}
}
