package ch14;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Employee;
import ch14.dao.CustomersDAO;
import ch14.dao.EmployeesDAO;

/**
 * Servlet implementation class JDBC19DeleteServlet
 */
@WebServlet("/JDBC19DeleteServlet")
public class JDBC19DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC19DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		EmployeesDAO employeesDao = new EmployeesDAO(); // 객체 생성
		
		Employee employee = employeesDao.getEmployee(Integer.parseInt(id));
		// getEmployee 메소드를 employee 객체에 다시 담는다
		request.setAttribute("employee", employee); // 그리고 다시 담아준다
		
		String path = "/ch14/jdbc19.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		EmployeesDAO employeesDao = new EmployeesDAO();
		
		employeesDao.deleteEmployee(Integer.parseInt(id)); 
		
		
		
		
		doGet(request, response);
	}

}
