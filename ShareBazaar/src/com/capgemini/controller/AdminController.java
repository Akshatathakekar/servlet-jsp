package com.capgemini.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdk.nashorn.internal.runtime.Context;

@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String emailid2;

	public AdminController() {
		super();
	}

	@Override
	public void init() throws ServletException {
		super.init();
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			response.setContentType("text/html");
			String email2 = request.getParameter("email");
			ServletContext context = getServletContext();
			context.setAttribute("email", email2);
			response.sendRedirect("ShareHomeController");
			PrintWriter out = response.getWriter();
			out.print(context.getServletContextName());
			out.print(email2);
		

	}

}
