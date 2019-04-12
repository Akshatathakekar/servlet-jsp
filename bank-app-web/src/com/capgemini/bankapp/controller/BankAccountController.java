package com.capgemini.bankapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.capgemini.bankapp.exception.BankAccountNotFoundException;
import com.capgemini.bankapp.exception.LowBalanceException;
import com.capgemini.bankapp.service.BankAccountService;
import com.capgemini.bankapp.service.impl.BankAccountServiceImpl;
import com.capgemini.model.BankAccount;

@WebServlet(urlPatterns = { "*.do" }, loadOnStartup = 1)
public class BankAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BankAccountService bankService;

	public BankAccountController() {
		bankService = new BankAccountServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String path = request.getServletPath();

		if (path.equals("/getAllBankAccounts.do")) {
			List<BankAccount> bankAccount = bankService.findAllbankAccounts();
			RequestDispatcher dispatcher = request.getRequestDispatcher("displayDetails.jsp");
			request.setAttribute("accounts", bankAccount);
			dispatcher.forward(request, response);
		}
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String path = request.getServletPath();
		System.out.println(path);
		PrintWriter out = response.getWriter();

		if (path.equals("/addNewBankAccount.do")) {
			String accountHolderName = request.getParameter("customername");
			String accountType = request.getParameter("accounttype");
			double balance = Double.parseDouble(request.getParameter("customerbalance"));

			BankAccount account = new BankAccount(accountHolderName, accountType, balance);
			if (bankService.addNewbankAccount(account)) {
				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");

				out.println("<h2>Bank Account is created successfully</h2>");

				out.close();

			}
		} else if (path.equals("/withdrawAmount.do")) {
			double balance = 0;
			int accountNumber = Integer.parseInt(request.getParameter("accountno"));
			double amount = Double.parseDouble(request.getParameter("amount"));

			try {
				balance = bankService.withdraw(accountNumber, amount);
				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");

				out.println("<h2>Withdraw amount " + balance + " successfully");

			} catch (LowBalanceException e) {
				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");

				out.println("<h2>Insufficient fund</h2>");
				// e.printStackTrace();
			} catch (BankAccountNotFoundException e) {
				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");

				out.println("<h2>Bank account is not found</h2>");
				// e.printStackTrace();
			}

			out.close();

		} else if (path.equals("/depositAmount.do")) {

			int accountNumber = Integer.parseInt(request.getParameter("accountno"));
			double amount = Double.parseDouble(request.getParameter("amount"));

			double balance = 0;
			try {
				balance = bankService.deposit(accountNumber, amount);
				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");
				out.println("<h2>Deposited  amount " + balance);
			} catch (BankAccountNotFoundException e) {
				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");
				out.println("<h2>bank account is not found");
				// e.printStackTrace();
			}

			out.close();

		}

		else if (path.equals("/fundTransfer.do")) {

			int fromAccount = Integer.parseInt(request.getParameter("FromAccount"));
			double amount = Double.parseDouble(request.getParameter("amount"));
			int toAccount = Integer.parseInt(request.getParameter("ToAccount"));

			double balance = 0;
			try {
				balance = bankService.fundTransfer(fromAccount, toAccount, amount);
				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");
				out.println("<h2>Transcation successful");

			} catch (LowBalanceException e) {

				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");
				out.println("<h2>You have insufficient fund");
			} catch (BankAccountNotFoundException e) {

				// e.printStackTrace();

				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");
				out.println("<h2>bank account is not found");
			}

			out.close();

		}

		else if (path.equals("/checkBalance.do")) {

			int accountNumber = Integer.parseInt(request.getParameter("accountno"));

			double balance = 0;
			try {
				balance = bankService.checkbalance(accountNumber);
				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");
				out.println("<h2>Your balance is  " + balance);
			} catch (BankAccountNotFoundException e) {
				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");
				out.println("<h2>bank account is not found");
				// e.printStackTrace();
			}

			out.close();

		}

		else if (path.equals("/deleteAccount.do")) {

			int accountNumber = Integer.parseInt(request.getParameter("accountno"));

			boolean account;
			try {
				account = bankService.deleteBankaccount(accountNumber);
				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");
				out.println("<h2>Your account is deleted");
			} catch (BankAccountNotFoundException e) {
				out.println("<br><h2><a href='main_index.html'>|Home|</a></h2><br>");
				out.println("<h2>bank account is not found");
				// e.printStackTrace();
			}

			out.close();

		}
		
		else if(path.equals("/searchAccount.do"))
		{
			int accountNumber = Integer.parseInt(request.getParameter("accountno"));
			try {
				BankAccount account=bankService.searchAccount(accountNumber);
				RequestDispatcher dispatcher = request.getRequestDispatcher("searchAccount.jsp");
				request.setAttribute("account",account);
				dispatcher.forward(request, response);
				
			} catch (BankAccountNotFoundException e) {
				// TODO Auto-generated catch block
				out.println("bank account not found");
				//e.printStackTrace();
			}
			out.close();

		}
		else if(path.equals("/updateAccount.do"))
		{
			int accountNumber = Integer.parseInt(request.getParameter("accountno"));
			BankAccount account;
			try {
				account = bankService.searchAccount(accountNumber);
				RequestDispatcher dispatcher = request.getRequestDispatcher("updateaccount.jsp");
				request.setAttribute("account",account);
				dispatcher.forward(request, response);
				
			} catch (BankAccountNotFoundException e) {
				// TODO Auto-generated catch block
				//e.printStackTrace();
				out.println("bank account not found");

			}
			
			out.close();
		}
		else if(path.equals("/newUpdate.do"))
		{
			int accountNumber = Integer.parseInt(request.getParameter("accountnumber"));
			String customer_name=request.getParameter("customername");
			String accountType=request.getParameter("accounttype");
			
			boolean result;
			result = bankService.updateAccount(accountNumber,customer_name,accountType);
			if(result==true)
			{
				out.println("Your account details are updated successfully");
			}
			else
			{
				out.println("Your account details are not updated successfully");

			}
			out.close();
		}
	}

}
