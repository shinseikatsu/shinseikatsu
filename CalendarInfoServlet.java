package test;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Exception.DatabaseException;
import Exception.SystemException;
import dao.CalendarDAO;
import dao.UserDAO;

/**
 * Servlet implementation class CalendarInfoServlet
 */
@WebServlet("/CalendarInfoServlet")
public class CalendarInfoServlet extends HttpServlet {

	private UserInfoBean userInfoBean;
	private CalendarInfoBean calendarInfoBean;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String s_year=request.getParameter("year");
		String s_month=request.getParameter("month");

		MyCalendarLogic logic=new MyCalendarLogic();
		MyCalendar mc=null;
		int year = 0;
		int month = 0;
		if(s_year != null && s_month != null) {
			year = Integer.parseInt(s_year);
			month = Integer.parseInt(s_month);
			if(month==0) {
				month=12;
				year--;
			}
			if(month==13) {
				month=1;
				year++;
			}
			//年と月のクエリパラメーターが来ている場合にはその年月でカレンダーを生成する
			mc=logic.createMyCalendar(year,month);
		}else {
			//クエリパラメータが来ていないときは実行日時のカレンダーを生成する。
			mc=logic.createMyCalendar();
			Calendar cl = Calendar.getInstance();
			year = cl.get(Calendar.YEAR);
			month = cl.get(Calendar.MONTH) + 1;
		}
		//リクエストスコープに格納
		request.setAttribute("mc", mc);

		try {
			CalendarDAO dao = new CalendarDAO();
			calendarInfoBean = dao.getCalendarInfoBean(request.getRemoteUser(),year,month);
			// SQLを実行するクラスにログイン中のユーザID(String)、現在の年月を渡す
			HttpSession session = request.getSession();
			session.setAttribute("calendarInfoBean", calendarInfoBean);


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
		try {
			UserDAO dao = new UserDAO();
			userInfoBean = dao.getUserInfoBean(request.getRemoteUser());
			// SQLを実行するクラスにログイン中のユーザID(String)を渡す
			HttpSession session = request.getSession();
			session.setAttribute("usrInfoBean", userInfoBean);
			getServletContext().getRequestDispatcher("/dashboard.jsp").forward(request, response);
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
