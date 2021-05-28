package ch14;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JDBC06Servlet
 */
@WebServlet("/JDBC06Servlet")
public class JDBC06Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC06Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> list = executeJDBC(); // 리턴 받은 메소드 list변수 한번 더 담기
		
		response.setContentType("text/html; charset=utf-8"); // html이라고 표시
		PrintWriter out = response.getWriter(); // out 이라는 객체 가져오기 브라우저에 보여주기 위해
		out.print("<ul>");
		
		for(String city : list) { // for문 사용하여 브라우저에 표시
			out.print("<li>");
			out.print(city);
			out.print("</li>");
			
		}
		
		out.print("</ul>");
	}
	
	private List<String> executeJDBC() { // List<String> 타입으로 리턴 
		
		List<String> cities = new ArrayList<>(); // ArrayList 담기
		
		String sql = "SELECT DISTINCT City " // 띄어쓰기 유의해서 쓰기
				+ "FROM Customers ";
				
		
		// 연결(sql 연결 하는법 외우자!!!!)
		String url ="jdbc:mysql://13.124.182.7/test"; // 본인ip
		String user ="root";
		String password = "wnddkdwjdqhcjfl1";
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		
		try {
		//클래스 로딩
		Class.forName("com.mysql.cj.jdbc.Driver");
		 con = DriverManager.getConnection(url, user, password);
		
		 //statement
		 stmt = con.createStatement();
		
		// 쿼리 실행, 결과리턴
		 rs = stmt.executeQuery(sql);
		
		//결과탐색
		 while(rs.next()) {  // 커서이동
			 
			 String city = rs.getString(1); 
			 cities.add(city); // while문 돌려서 list에다가 담기
//			 System.out.println(city);
		 }
		 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//연결 닫기
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(stmt != null){
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		return cities; // 담은 배열 리턴
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
