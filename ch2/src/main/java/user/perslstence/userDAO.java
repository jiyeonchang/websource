package user.perslstence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import user.domain.userDTO;

public class userDAO {
//드라이버 로드 
	
	static {
	try {
		Class.forName("oracle.jdbc.OracleDriver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
}
	
	//커낵션 생성
	
	public Connection getConnection() {
		String url= "jdbc:oracle:thin:@localhost:1521:xe";
		String user ="c##java";
		String password ="12345";
		userDTO dto = null;
		try {
			Connection con = DriverManager.getConnection(url, user, password);
			return con; 
		} catch (SQLException e) {
			
			e.printStackTrace();
		}return null;
	}
	
	//login성공하면  userid , name 리턴 
	public userDTO isLogin(String userid,String password) {
//		boolean loginFlag=false;
		Connection con=null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		
		userDTO dto = null;
		try {
			con= getConnection();
			String sql = "select userid,name from member where userid=? and password=?";
			pstmt =con.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
			if(rs.next()) {				
//				loginFlag =true;
				
				dto = new userDTO();
				dto.setUserid(rs.getString("userid"));
				dto.setName(rs.getString("name"));
			}
		} catch (Exception e) {
		e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return dto;
	}
}




