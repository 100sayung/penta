package com.penta.manager;

import org.aspectj.lang.JoinPoint;

public class MyAOPAdvice {
	
	public void beforeMethod(JoinPoint jp) {
		System.out.println("MyAOPAdvice.beforeMethodNew()");
	}

}
