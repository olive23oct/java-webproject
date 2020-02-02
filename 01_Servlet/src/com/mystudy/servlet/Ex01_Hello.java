package com.mystudy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class Ex01_Hello extends HttpServlet{
	private static final  long serialVersionUID = 1L;

	public Ex01_Hello() {
		/* 
		 *  WAS(Web Application Server) : Servlet 컨테이너, JSP 컨테이너
		 *  생성자는 서블릿이 WAS에 등록될 때 한 번만 실행(최초 요청 시)
		 *  한 번 로딩된 후에는 재실행되지 않음
		 *  두 번째 URL 요청부터는 service() 메소드 실행
		 */
		
		super();
		System.out.println(">>> 생성자 실행");
	}
	
	public void init(ServletConfig config) throws ServletException {
		/*
		 *  서블릿 객체가 처음 생성된 후 최초로 한 번 실행
		 *  초기화 작업 등을 등록하는 용도로 사용
		 */
		System.out.println("> init() 실행");
		// service() 호출
	}
	
	public void destroy() {
		// 서버에서 서블릿이 내려갈 때 destroy() 호출 -> 서버에서 소멸
		System.out.println("> destroy() 실행");
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		System.out.println(" >> service() 실행 =====");
		
		// 요청 정보를 확인해서 get, post에 따라 분기처리
		if(request.getMethod().equalsIgnoreCase("get")) {
			doGet(request, response);
		} else if (request.getMethod().equalsIgnoreCase("post")) {
			doPost(request, response);
		}
	}
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// request : 요청정보(클라이언트 정보)
		// response : 응답정보(요청에 따른 결과를 전달할 정보)
		System.out.println(">> doGet() 실행");
		
		PrintWriter out = response.getWriter();
		out.println("<h1> Hello World </h1>");
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> doPost() 실행");
	}
}
