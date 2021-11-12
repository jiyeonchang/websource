package member.service;

import member.domain.MemberDTO;
import member.domain.UpdateDTO;
import member.persistence.MemberDAO;

import static member.persistence.JdbcUtil.*;

import java.sql.Connection;
public class ModifyService {
public boolean modify(UpdateDTO updateDto) {
		
		Connection con = getConnection();
		MemberDAO dao = new MemberDAO(con);
		boolean updateFlag = dao.update(updateDto);
		
		if(updateFlag) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		
		return updateFlag;
	}
}
