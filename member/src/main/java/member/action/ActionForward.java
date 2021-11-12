package member.action;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
//이동경로와 이동방식 저장 
public class ActionForward {

	private String path;
	private boolean redirect;
	
}
