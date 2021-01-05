package notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import guestbook.dao.GuestBookDAO;
import guestbook.dto.GuestBookDTO;
import notice.dao.NoticeDAO;
import notice.dto.NoticeDTO;


@WebServlet("/notice_servlet/*")
public class NoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, 
	IOException {
		String uri=request.getRequestURI(); //요청한 주소
		System.out.println(uri);
		NoticeDAO dao=new NoticeDAO();
		if(uri.indexOf("list.do") != -1) {
			String searchkey=request.getParameter("searchkey");
			String search=request.getParameter("search");
			if(searchkey==null) searchkey="name";
			if(search==null) search="";
			
			System.out.println("searchkey:"+searchkey);
			System.out.println("search:"+search);
			
			List<NoticeDTO> items=dao.getList(searchkey,search);//방명록 리스트
			request.setAttribute("list", items);
			request.setAttribute("count", items.size());//레코드 갯수
			
			request.setAttribute("searchkey", searchkey);
			request.setAttribute("search", search);
			
			String page="/myjsp/list.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("insert.do") != -1) {
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String inconveniences=request.getParameter("inconveniences");

			System.out.println(inconveniences);
			
			String passwd=request.getParameter("passwd");
			String content=request.getParameter("content");
			NoticeDTO dto=new NoticeDTO();
			dto.setName(name);
			dto.setEmail(email);
			dto.setInconveniences(inconveniences);
			dto.setPasswd(passwd);
			dto.setContent(content);
			dao.ntInsert(dto); //dao에 레코드 추가 요청
		
			String url="/notice_servlet/list.do";
			response.sendRedirect(request.getContextPath()+url);
		}else if(uri.indexOf("passwd_ch.do") != -1) {
			int idx=Integer.parseInt(request.getParameter("idx"));
			String passwd=request.getParameter("passwd");
			System.out.println("게시물번호:"+idx);
			System.out.println("사용자가 입력한 번호:"+passwd);
			
			boolean result=dao.passwdCh(idx, passwd);
			System.out.println("결과:"+result);
			String url="";
			if(result) {
				url="/myjsp/myEdit.jsp";
				NoticeDTO dto=dao.ntDetail(idx);
				request.setAttribute("dto", dto);
			}else {
				url="/notice_servlet/list.do";
			}
			RequestDispatcher rd=request.getRequestDispatcher(url);
			rd.forward(request, response);
		}else if(uri.indexOf("update.do") != -1) {
			int idx=Integer.parseInt(request.getParameter("idx"));
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String inconveniences=request.getParameter("inconveniences");
			String passwd=request.getParameter("passwd");
			String content=request.getParameter("content");
			NoticeDTO dto=new NoticeDTO();
			dto.setIdx(idx);
			dto.setName(name);
			dto.setEmail(email);
			dto.setInconveniences(inconveniences);
			dto.setPasswd(passwd);
			dto.setContent(content);
			dao.ntUpdate(dto);
			
			String url="/notice_servlet/list.do";
			response.sendRedirect(request.getContextPath()+url);
		}else if(uri.indexOf("delete.do") != -1) {
			int idx=Integer.parseInt(request.getParameter("idx"));
			dao.ntDelete(idx);
			String url="/notice_servlet/list.do";
			response.sendRedirect(request.getContextPath()+url);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
