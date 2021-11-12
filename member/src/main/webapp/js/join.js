/**
 * 
 */
$(function() {

	$("#joinform").validate({
		rules: {
			userid: {
				required: true,
				validId:true
			},
			password: {
				requird: true
			},
			confirm_password: {
				requird: true,
				equalTo: "#password"

			},
			name: {
				requird: true

			},
			gender: {
				requird: true

			},
			email: {
				requird: true

			}

		},

		messages: {

			userid: {
				required: "아이디는 필수 입력 요소입니다"
			},
			password: {
				requird: "비밀번호는 필수 입력 요소입니다"
			},
			confirm_password: {
				requird: "비밀번호는 필수 입력 요소입니다",
				equalTo: "이전 비밀번호와 다릅니다."

			},
			name: {
				requird: "이름은 필수 입력 요소입니다"

			},
			gender: {
				requird: "성별은 필수 입력 요소입니다"

			},
			email: {
				requird: "이메일은. 필수 입력 요소입니다"

			}


		},
		
			errorPlacement: function(error, element){

		$(element).closest("form").find("small[id='" + element.attr("id") + "']")
			.append(error);
	}
		
	})
})
//사이트 규칙 추가 
$.validator.addMethod("",function(value){

 let regId = /^(?=.*[A-Za-z])(?=.*[\d])[A-Za-z\d]{6,12}$/;

    return regId.test(value); //true or false

  },      "아이디는 영대소문자 숫자의 조합으로 6~12자리로 만들어야합니다 "    )

$.validator.addMethod("",function(value){

 let regId = /^(?=.*[A-Za-z])(?=.*[\d])[A-Za-z\d]{6,12}$/;

    return regId.test(value); //true or false

  },      "아이디는 영대소문자 숫자의 조합으로 6~12자리로 만들어야합니다 "    )




