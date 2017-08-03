package com.cpsc.cryptography;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PrimeCheck
 */
@WebServlet("/PrimeCheck")
public class PrimeCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrimeCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String n = request.getParameter("n");
		String g =  request.getParameter("g");
		
		int n_int = Integer.parseInt(n);
		int g_int = Integer.parseInt(g);
		
		
		boolean status_n = Prime.isprime(n_int);
		boolean status_g = Prime.isprime(g_int);
		
		if(status_n == true && status_g == true)
		{
			response.sendRedirect("diffiehellman?n="+n+"&g="+g);
		}
		
		else
		{
			response.sendRedirect("execute?msg=notPrime");
		}
		
		
		
		
		
	}

}
