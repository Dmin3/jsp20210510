package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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

import ch14.bean.Customer;

/**
 * Servlet implementation class JDBC14Servlet
 */
@WebServlet("/JDBC14Servlet")
public class JDBC14InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC14InsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path ="/ch14/jdbc14form.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String contactName = request.getParameter("contactName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String postalCode = request.getParameter("postalCode");
		String country = request.getParameter("country");
		
		Customer customer = new Customer();
		
		customer.setCity(city);
		customer.setAddress(address);
		customer.setContactName(contactName);
		customer.setCountry(country);
		customer.setPostalCode(postalCode);
		customer.setName(name);
		
		executeJDBC(customer);
		
		doGet(request, response);
		
	}
	
private void executeJDBC(Customer customer) { 
		
		
		
		
		
		
		String sql = "INSERT INTO Customers " + 
				"(CustomerName, ContactName, Address, City, PostalCode, Country) " + 
				"VALUES " + 
				"(?, ?, ?, ?, ?, ?)";
		// 띄어쓰기 유의해서 쓰기
				
				
				
				
		
		// 연결(sql 연결 하는법 외우자!!!!)
		String url ="jdbc:mysql://13.124.182.7/test"; // 본인ip
		String user ="root";
		String password = "wnddkdwjdqhcjfl1";
		
		Connection con = null;
		PreparedStatement stmt = null; //파라미터가 있는 sql에다가 값을 집어넣는 객체
		ResultSet rs = null;
		
		
		try {
		//클래스 로딩
		Class.forName("com.mysql.cj.jdbc.Driver");
		 con = DriverManager.getConnection(url, user, password);
		
		 //preparedstatement 생성
		 stmt = con.prepareStatement(sql);
		 
		 // ? (파라미티)에 값 할당을 해주는 메소드
		 // 타입이 Integer 이면 setInt로 바꿔주면된다
		 stmt.setString(1, customer.getName());
		 stmt.setString(2, customer.getContactName());
		 stmt.setString(3, customer.getAddress());
		 stmt.setString(4, customer.getCity());
		 stmt.setString(5, customer.getPostalCode());
		 stmt.setString(6, customer.getCountry());
		 
		
		// 쿼리 실행
		// executeUpdate <- 데이터를 추가하거나 삭제할때 쓰는 메소드
		// Integer를 return함
		 int cnt = stmt.executeUpdate();
		 
		 if(cnt == 1) {
			 System.out.println("입력 성공");
		 } else {
			 System.out.println("입력 실패");
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
		
	}
}
