package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Exception.DatabaseException;
import Exception.SystemException;
import dao.CalendarDAO;
/**
 * Servlet implementation class CalendarInfoUpServlet
 */
@WebServlet("/CalendarInfoUpServlet")
public class CalendarInfoUpServlet extends HttpServlet {
	private CalendarInfoBean calendarInfoBean;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			CalendarDAO dao = new CalendarDAO();
			calendarInfoBean = dao.getCalendarInfoBean(request.getParameter("calendarid"));
			// SQLを実行するクラスにカレンダーID(String)を渡す
			HttpSession session = request.getSession();
			session.setAttribute("calendarInfoBean", calendarInfoBean);
			getServletContext().getRequestDispatcher("/calendarupdate.jsp").forward(request, response);
			// 取得したレコード全件を次ページに渡す
			// 今回は1件のみ取得
		}catch(SystemException e) {
			e.printStackTrace();
			HttpSession session = request.getSession();
			session.setAttribute("Except", e);
			getServletContext().getRequestDispatcher("/error.jsp").forward(request,response);
		}catch(DatabaseException e) {
			e.printStackTrace();
			HttpSession session = request.getSession();
			session.setAttribute("Except", e);
			getServletContext().getRequestDispatcher("/error.jsp").forward(request,response);
		}
	}

}
