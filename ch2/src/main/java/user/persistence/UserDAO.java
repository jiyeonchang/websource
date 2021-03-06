
//작업후 멤버테이블 만들러  sql 만들었엇음
package user.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import user.domain.UserDTO;

public class UserDAO {
	
	//드라이버 로드
	static {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}
	}
	
	//커넥션 생성
	public Connection getConnection() {
		
		//database 서버주소,port 정보
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "c##java";
		String password = "12345";
		
		try {
			Connection con = DriverManager.getConnection(url, user, password);
			return con;
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		return null;
	}
	
	//login (select) 성공하면 userid,name 을 리턴
	public UserDTO isLogin(String userid,String password) {		
		
		Connection con = null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		//login (select) 성공하면 userid,name 을 리턴하기 위해 userDto만들기
		UserDTO dto = null;
				
		try {
			con = getConnection();
			
			//login (select) 성공하면 userid,name 을 리턴하기 위해 select userid,name from
			String sql = "select userid,name from member where userid=? and password=?";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, password);
			//java.sql.SQLExeception : 인뎃스에서 누락된 in또는 out매개변수 2
			//DAO ? 에 해당하는 코드 확인 
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new UserDTO();
				dto.setUserid(rs.getString("userid"));
				dto.setName(rs.getString("name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}		
		
		return dto;
	}
}


