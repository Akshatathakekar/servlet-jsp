package com.capgemini.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class newsController
 */
@WebServlet(name = "newsController", loadOnStartup = 1, urlPatterns = { "/TodayNews"})
public class newsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public newsController() {
        super();
       
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		String paper=request.getParameter("paper");
		if(paper.equals("TOI"))
		{
			response.sendRedirect("https://timesofindia.indiatimes.com/");
		}
		else if(paper.equals("ET"))
		{
			response.sendRedirect("https://economictimes.indiatimes.com/");
		}
		else if(paper.equals("MT"))
		{
			response.sendRedirect("https://maharashtratimes.indiatimes.com/");
		}
		else if(paper.equals("dna"))
		{
			response.sendRedirect("https://www.dnaindia.com/");
		}
	
	}

	
	

}
