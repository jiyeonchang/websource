package pattern.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pattern.action.Action;
import pattern.action.ActionForward;

/**
 * Servlet implementation class PatternController
 */
@WebServlet("*.do")
public class PatternController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   //요청에대한 한글처리 
		request.setCharacterEncoding("utf-8");		
		//어디서 요청이 왔는지 찾기 
		String requestUri = request.getRequestURI();				
		String contextPath =request.getContextPath();
		String cmd = requestUri.substring(contextPath.length());
		
		//요청에따라서 해당 Action생성
		ActionFactory af = ActionFactory.getInstance();		
		Action action = af.action(cmd);
		
		ActionForward actionForward=null;
		try {
			
			//생성된 action 에게일을 시킴 ->결과를  Actionforward 객체로 넘겨받음
			actionForward = action.execute(request);
		} catch (Exception e) {			
			e.printStackTrace();
		}
		//넘겨받은 ActionForward가 가지고 있는 값에 따라서 페이지 이동 
		if(actionForward.isRedirect()){
			response.sendRedirect(actionForward.getPath());
		}else {
			RequestDispatcher rd = request.getRequestDispatcher(actionForward.getPath());
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}












