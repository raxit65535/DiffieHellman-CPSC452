package com.cpsc.cryptography;

public class Prime {

	public static boolean isprime(int x)
	{
		
		
		for(int i = 2 ; i<x;i++)
		{
			if((x%i) == 0)
			{
				return false;
			}
		}
		
		return true;
	}

}
