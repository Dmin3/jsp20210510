package ch14.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ch14.bean.Employee;

public class EmployeesDAO {
	public Employee getEmployee(int id) {

		Employee employee = null; // 리턴할 객체

		String sql = "SELECT EmployeeID, "
				+ "LastName, "
				+ "FirstName, "
				+ "Notes "
				+ "FROM Employees "
				+ "WHERE EmployeeID = ? "; 
				
		// 띄어쓰기 유의해서 쓰기

		// 연결(sql 연결 하는법 외우자!!!!)
		String url = "jdbc:mysql://13.124.182.7/test"; // 본인ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null; // 파라미터가 있는 sql에다가 값을 집어넣는 객체
		ResultSet rs = null;

		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);

			// preparedstatement 생성
			stmt = con.prepareStatement(sql); // prepareStatement

			// ? (파라미티)에 값 할당을 해주는 메소드
			// 타입이 Integer 이면 setInt로 바꿔주면된다
			stmt.setInt(1, id);

			// 쿼리 실행
			// executeUpdate <- 데이터를 추가하거나 삭제할때 쓰는 메소드
			// Integer를 return함
			rs = stmt.executeQuery();

			if (rs.next()) {
				employee = new Employee();
				employee.setId(id);
				employee.setLastName(rs.getString(2));
				employee.setFirstName(rs.getString(3));
				employee.setNotes(rs.getString(4));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}
		return employee;
	}
public void updateEmployee(Employee employee) {
		
		// code 완성..
		
		String sql = "UPDATE Employees " 
					+ 	" SET LastName = ?, "
					+ 	" FirstName = ?, "
					+ 	" Notes = ? "
					+ 	" WHERE EmployeeID = ? ";
				
				
				
	
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
		 stmt = con.prepareStatement(sql); // prepareStatement
		 
		 // ? (파라미티)에 값 할당을 해주는 메소드
		 // 타입이 Integer 이면 setInt로 바꿔주면된다
		 stmt.setString(1, employee.getLastName());
		 stmt.setString(2, employee.getFirstName());
		 stmt.setString(3, employee.getNotes());
		 stmt.setInt(4, employee.getId());
		
		
		 
		
		// 쿼리 실행
		// executeUpdate <- 데이터를 추가하거나 삭제할때 쓰는 메소드
		// Integer를 return함
		 int cnt = stmt.executeUpdate();
		 
		 if(cnt == 1) {
			 System.out.println("수정 성공");
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
	public void deleteEmployee(int id) {
		String sql = "DELETE FROM Employees WHERE EmployeeID = ? ";

		// 연결(sql 연결 하는법 외우자!!!!)
		String url = "jdbc:mysql://13.124.182.7/test"; // 본인ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null; // 파라미터가 있는 sql에다가 값을 집어넣는 객체

		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);

			// preparedstatement 생성
			stmt = con.prepareStatement(sql); // prepareStatement

			// ? (파라미티)에 값 할당을 해주는 메소드
			// 타입이 Integer 이면 setInt로 바꿔주면된다
			stmt.setInt(1, id);

			// 쿼리 실행
			// executeUpdate <- 데이터를 추가하거나 삭제할때 쓰는 메소드
			// Integer를 return함
			int cnt = stmt.executeUpdate();

			if (cnt == 1) {
				System.out.println("삭제 성공");
			} else {
				System.out.println("삭제 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (con != null) {
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
