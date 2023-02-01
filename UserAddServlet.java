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
import dao.UserDAO;

/**
 * Servlet implementation class UserAddServlet
 */
@WebServlet("/UserAddServlet")
public class UserAddServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = null;
		String userName = null;
		String password = null;
		String mail = null;

		userId = request.getParameter("userid");
		userName = request.getParameter("username");
		password = request.getParameter("password");
		mail = request.getParameter("mail");
		// 前のページから送信された情報を格納

		UserRecordBean usrrecord = new UserRecordBean();
		usrrecord.setUserId(userId);
		usrrecord.setUserName(userName);
		usrrecord.setPassword(password);
		usrrecord.setMail(mail);
		// 格納した情報をUserRecordBeanに格納

		try {
			UserDAO dao = new UserDAO();
			int ret = dao.addUserInfo(usrrecord);
			// UserRecordBeanに格納した情報をUserDAOに渡す
			// この1行でDBへの追加が行われる

			@SuppressWarnings("unused")
			// 警告を消すためのアノテーションなので消してもいい

			int retRole = dao.addRoleInfo(userId);
			// ここでロールの追加も行う


			HttpSession session = request.getSession();
			session.setAttribute("RecordCount", ret);
			session.setAttribute("UserRecord", usrrecord);
			getServletContext().getRequestDispatcher("/useraddreport.jsp").forward(request,response);
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
