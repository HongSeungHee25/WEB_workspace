/**
 * 
 */
function func_login(){			
	
	const frm = document.forms[0];
    const userid = frm.userid.value;
    /* 사용자가 실수로 공백을 입력할 경우 공백으로 제거하고 비밀번호만 추출해서 비교  */
    let password = frm.password.value.trim(); 
	
	/* let 은 값 변경 또는 객체 재할당을 할수 있는 일반적인 변수 */
	let isValid = true		/*유효성 통과 여부를 저장하는 변수*/
	
	if (userid === '') {
        alert('ID는 필수 입력입니다.');
        frm.userid.focus();
        isValid = false;
    }
    if (password.length == 0) {
        alert('비밀번호를 입력해주세요');
        frm.password.focus();
        isValid = false;
    }

    if (isValid) {
        const hashedPassword = sha256(password); // SHA-256 해시화
        frm.password.value = hashedPassword; // 해시화된 비밀번호를 폼 필드에 설정
        frm.submit();
    } else {
        alert('로그인 실패');
    }
}