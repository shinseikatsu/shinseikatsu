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
 * Servlet implementation class CalendarAddServlet
 */
@WebServlet("/CalendarAddServlet")
public class CalendarAddServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String scheduleDate = null;
		String startTime = null;
		String endTime = null;
		String schedule = null;
		String memo = null;

		scheduleDate = request.getParameter("scheduledate");
		startTime = request.getParameter("starttime");
		endTime = request.getParameter("endtime");
		schedule = request.getParameter("schedule");
		memo = request.getParameter("memo");

		CalendarRecordBean calrecord = new CalendarRecordBean();

		calrecord.setUserId(request.getRemoteUser());
		calrecord.setScheduleDate(scheduleDate);
		calrecord.setStartTime(startTime);
		calrecord.setEndTime(endTime);
		calrecord.setSchedule(schedule);
		calrecord.setMemo(memo);


	try {
		CalendarDAO dao = new CalendarDAO();
		int ret = dao.addCalendarInfo(calrecord);
		// UserRecordBeanに格納した情報をUserDAOに渡す
		// この1行でDBへの追加が行われる


		HttpSession session = request.getSession();
		session.setAttribute("RecordCount", ret);
		getServletContext().getRequestDispatcher("/calendarconf.jsp").forward(request,response);
		// 追加件数(RecordCount)と追加内容(UserRecord)を次ページへ渡す
		return;
	}catch(SystemException e) {
		e.printStackTrace();
		HttpSession session = request.getSession();
		session.setAttribute("Except",e);
		getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
		return;
	}catch(DatabaseException e) {
		e.printStackTrace();
		HttpSession session = request.getSession();
		session.setAttribute("Except",e);
		getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
		return;
	}

	}
}
