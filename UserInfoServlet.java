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
 * Servlet implementation class UserInfoServlet
 */
@WebServlet("/UserInfoServlet")
public class UserInfoServlet extends HttpServlet {
	private UserInfoBean userInfoBean;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			UserDAO dao = new UserDAO();
			userInfoBean = dao.getUserInfoBean(request.getRemoteUser());
			// SQLを実行するクラスにログイン中のユーザID(String)を渡す
			HttpSession session = request.getSession();
			session.setAttribute("usrInfoBean", userInfoBean);
			getServletContext().getRequestDispatcher("/userinfo.jsp").forward(request, response);
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
