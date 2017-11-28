package test;


import jiance0603.Jiance0603;

import com.mathworks.toolbox.javabuilder.MWException;


public class TestM {
	public static void main(String[] args) throws MWException {
		Jiance0603 jiance;
		jiance = new Jiance0603();
		Object[] result = jiance.jiance0603(3,"E:\\103lvbo.mat","E:\\1","E:\\2");
		System.out.println(result[0]);
		System.out.println(result[1]);
		System.out.println(result[2]);
	}
}
