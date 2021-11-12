package book.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;





public class JdbcUtil {
//드라이버 로드 
	static {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
		
		//커낵션 생성
	//connection
		public static Connection getConnection() {
			try {
			String url= "jdbc:oracle:thin:@localhost:1521:xe";
			String user ="c##java";
			String password ="12345";
			Connection con= DriverManager.getConnection(url, user, password);
			//자바는 자동 커밋(auto commit) 상태임 (자동반영 막는 코드)
				con.setAutoCommit(false);
				return con;
			
			} catch (SQLException e) {
				
				e.printStackTrace();
			}return null;
		}
	//commit
		public static void commit(Connection con) {
			try {
				con.commit();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		//rollback
		public static void rollback(Connection con) {
			try {
				con.rollback();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	
	//자원해제
		public static void close(Connection con) {
			if(con!=null) {
				try {
					con.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			
		}
		public static void close(PreparedStatement pstmt) {
			if(pstmt!=null) {
				try {
					pstmt.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			
		}
		public static void close(ResultSet rs) {
			if(rs!=null) {
				try {
					rs.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			
		}
}
