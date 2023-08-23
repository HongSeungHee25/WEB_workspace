/**
 * 
 */
/* 이메일 정규식 함수 */
function CheckEmail(str){                                                 
     var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
     if(!reg_email.test(str)) {                            
          return false;         
     }else {                       
          return true;         
     }                            
}   
function func_join(){			
	
	const frm = document.forms[0];
    const userid = frm.userid.value;
    const username = frm.username.value;
    const useremail = frm.useremail.value;
    const userage = frm.userage.value;
    /* 사용자가 실수로 공백을 입력할 경우 공백으로 제거하고 비밀번호만 추출해서 비교  */
    let password = frm.password.value.trim(); 
    let password2 = frm.password2.value.trim();
	console.log(frm)
	console.log(userid)
	console.log(username)
	console.log(useremail)
	console.log(userage)
	console.log(password)
	
	/* let 은 값 변경 또는 객체 재할당을 할수 있는 일반적인 변수 */
	let isValid = true		/*유효성 통과 여부를 저장하는 변수*/
	
	if (userid === '') {
        alert('ID는 필수 입력입니다.');
        frm.userid.focus();
        isValid = false;
    }
    if (username === '') {
        alert('이름은 필수 입력입니다.');
        frm.username.focus();
        isValid = false;
    }
    if (useremail === '') {
        alert('이메일은 필수 입력입니다.');
        frm.useremail.focus();
        isValid = false;
    } else if (!CheckEmail(useremail)) {
        alert('이메일 형식이 잘못되었습니다.');
        frm.useremail.focus();
        isValid = false;
    }
    if (userage <= 15 || userage >= 99) {
        alert('나이는 15~99 범위의 값이어야 합니다.');
        frm.userage.focus();
        isValid = false;
    }
    if (password.length == 0) {
        alert('비밀번호를 입력해주세요');
        frm.password.focus();
        isValid = false;
    }
    if (password2.length == 0) {
        alert('비밀번호를 입력해주세요');
        frm.password2.focus();
        isValid = false;
    }
    /* 첫번째 입력한 비밀번호와 비밀번호 확인하는 두번째 비밀번호와 일치하는지 확인 */
    if (password2 != password) {
        alert('비밀번호 확인이 일치하지 않습니다.');
        frm.password2.focus();
        isValid = false;
    }

    if (isValid) {
        const hashedPassword = sha256(password); // SHA-256 해시화
        frm.password.value = hashedPassword; // 해시화된 비밀번호를 폼 필드에 설정
        frm.password2.value = hashedPassword; // 해시화된 비밀번호를 폼 필드에 설정
        frm.submit();
    } else {
        alert('회원가입 실패');
    }
}