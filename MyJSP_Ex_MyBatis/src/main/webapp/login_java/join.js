/**
 * 
 */
function CheckEmail(str){                                                 
     var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
     if(!reg_email.test(str)) {                            
          return false;         
     }else {                       
          return true;         
     }                            
}   
function func_join(){			/* '가입하기' 버튼의 onclick 이벤트에 대해 실행하는 함수 */
	/* 자바스크립트의 변수 선언 키워드 : var, let, const. var 은 old version 변수 선언 방식.
		const 는 값은 변경할 수 없고, 객체는 재할당 불가. 일반적으로 요소를 저장하는 변수 형식으로 사용
	*/
	const frm = document.forms[0]
	const userid = frm.userid
	const username = frm.username
	const useremail = frm.useremail
	const userage = frm.userage
	const password = frm.password
	console.log(frm)
	console.log(userid)
	console.log(username)
	console.log(useremail)
	console.log(userage)
	console.log(password)
	
	/* let 은 값 변경 또는 객체 재할당을 할수 있는 일반적인 변수 */
	let isValid = true		/*유효성 통과 여부를 저장하는 변수*/
	
	if(userid.value == ''){		/*텍스트 입력 없으면 ''*/
		alert('ID는 필수 입력입니다.')	
		userid.focus()			
		isValid=false
	}
	if(username.value == ''){		/*텍스트 입력 없으면 ''*/
		alert('이름은 필수 입력입니다.')	
		username.focus()			
		isValid=false
	}
	if(useremail.value == ''){
		alert('이메일은 필수 입력입니다.')
		useremail.focus()			
		isValid=false
	}else if(!CheckEmail(useremail.value))	{
			alert("이메일 형식이 잘못되었습니다");
			useremail.focus();
			isValid=false
		}         
		       
	if(userage.value <= 15||userage.value >= 99){
		alert('나이는 15~99 범위의 값이어야 합니다.')
		userage.focus()
		isValid=false
	}
	
	if(password.value.length < 4){
		alert('패스워드는 4글자 이상입니다.')
		email.focus()
		isValid=false
	}
	      
	if(isValid)
		frm.submit()						/*submit 버튼을 클릭하는 것과 같은 메소드 동작*/
	else
		alert('회원가입 실패')
	

}
