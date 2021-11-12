package member.action;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import lombok.AllArgsConstructor;
import member.domain.MemberDTO;
import member.domain.UpdateDTO;
import member.persistence.MemberDAO;
import member.service.ModifyService;

import static member.persistence.JdbcUtil.*;

@AllArgsConstructor
public class ModifyAction implements Action {

	private String path;

	@Override
	public ActionForward execute(HttpServletRequest request) throws Exception {
		
		
		//userid 가져오기 -세션
		HttpSession session =request.getSession();
		MemberDTO loginDto= (MemberDTO)session.getAttribute("loginDto");
		String userid= loginDto.getUserid();
		
		
		//modifyForm.jsp 사용자 입력값 가져오기 
		String current_password =request.getParameter("current_password");
		String new_password =request.getParameter("new_password");
		String confirm_password =request.getParameter("confirm_password");
			
		UpdateDTO updateDto=new UpdateDTO(userid,current_password,new_password,confirm_password);
			
			if(updateDto.passwordEqualTo(new_password)) {
				//db작업 
				ModifyService service = new ModifyService();
				boolean updateFlag =service.modify(updateDto);
				//성공하면 커밋 ,현재 세션 해제 ,로그인 페이지로 이동 
			if (updateFlag) {			
				session.invalidate();
			}else {
				path="/view/modifyForm.jsp";
			}		
			}else {
				path="/view/modifyForm.jsp";
			}	
			
		
			return new ActionForward(path, true);	
	}
}