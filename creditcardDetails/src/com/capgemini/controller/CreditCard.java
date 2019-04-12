package com.capgemini.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class CreditCard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CreditCard() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String path=request.getServletPath();
	if(path.equals("/CreditCard.do"))
	{
		response.setContentType("text/html");
		String customerName=request.getParameter("name");
		int cardNumber=Integer.parseInt(request.getParameter("cardnumber"));
		int creditLimit=Integer.parseInt(request.getParameter("limit"));
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("displayDetails.jsp");
		
		request.setAttribute("customerName", customerName);
		request.setAttribute("number", cardNumber);
		request.setAttribute("limit", creditLimit);

		dispatcher.forward(request, response);

	}
	}

}
