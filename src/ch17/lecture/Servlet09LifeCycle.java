package ch17.lecture;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet09LifeCycle
 */
@WebServlet("/Servlet09LifeCycle")
public class Servlet09LifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet09LifeCycle() {
        super();
        System.out.println("servlet 09 생성자 실행");
    }
//    @Override
//    public void init() throws ServletException {
//    	// TODO Auto-generated method stub
//    	super.init();
//    	
//    	System.out.println("doget/dopost 메소드보다 먼저 실행되어야 함");
//    	System.out.println("한번만 실행됨.");
//    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().print("servlet09 do get method");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
