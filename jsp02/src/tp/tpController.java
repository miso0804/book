package tp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/tp_servlet/*")
public class tpController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		String context=request.getContextPath();
		tpDAO dao=new tpDAO();
		
		if(uri.indexOf("login.do") != -1) {
			String userid=request.getParameter("userid");
			String userpw=request.getParameter("userpw");
			System.out.println("아이디"+userid);
			System.out.println("비밀번호"+userpw);
			tpDTO dto=new tpDTO();
			dto.setUserid(userid);
			dto.setUserpw(userpw);
			String result=dao.loginCheck(dto);
			System.out.println(result);
			request.setAttribute("result", result);
			String page="/tp/tp_result.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
