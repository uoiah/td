package cn.uoiah.td.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.uoiah.td.bean.Resume;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/contactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter pw = response.getWriter();
		Resume r = new Resume();
		r.setName(request.getParameter("name"));
		r.setEmail(request.getParameter("email"));
		r.setMemo(request.getParameter("massage"));
		r.setGender(request.getParameter("sex"));
		r.setSubject(request.getParameter("sel"));
		String[] favarr = request.getParameterValues("fav");
		String favs = "";
		for(String fav : favarr) {
			favs += "," + fav;
		}
		r.setFavs(favs.substring(1));
//		System.out.println(r);
		request.setAttribute("resume", r);
		request.getRequestDispatcher("/WEB-INF/views/resume.jsp").forward(request, response);
//		pw.write("success");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
