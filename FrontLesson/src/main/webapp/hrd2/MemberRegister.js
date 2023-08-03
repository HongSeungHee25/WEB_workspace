/**
 * 
 */

//현재 시간
const today = new Date()

//0. yyyy-mm-dd 로 변환해주는 함수	▶️ yyyy-m-d = X
function dateFormat(vdate){
	const year = vdate.getFullYear()
	const month = (vdate.getMonth()+1).toString().padStart(2,'0')
	const date = vdate.getDate().toString().padStart(2,'0')
	
	let result = [year,month,date].join('-')
	
	return result
}


//1. 가입일자 = 오늘 날짜
const joinDate = document.getElementById('joinDate')
joinDate.value = dateFormat(today)


//2. 정보 보관 기간 불러오기
//3. 만료일자 = 가입일자 + 보관 기간
const keepYear = document.getElementById('keepYear')
const quitDate = document.getElementById('quitDate')

keepYear.addEventListener('change',()=>{
	//2
	const keep = keepYear.value
	
	//3
	//만료일자 = joinDate.value + keep 	
	const year = today.getFullYear()+Number(keep)
	const month = (today.getMonth()+1).toString().padStart(2,'0')
	const date = today.getDate().toString().padStart(2,'0')
	
	let result = [year,month,date].join('-')		//String 타입
	//★★★★★★★ setDate(today.getFullYear()+Number(keep))
	
	quitDate.value = result
})

document.getElementById('joinBtn').addEventListener('click',()=>{
	
	const name = document.getElementById('name')
	
	let isValid = true
	
	//이름 공백 불가
	if(name.value == ''){
		alert('이름은 필수 입력입니다.')
		name.focus()		/* 커서 옮기는거 */
		isValid = false
	}
	
	if(isValid) alert('등록되었습니다.')
	else alert('유효성 검사 실패')
})
document.getElementById('checkBtn').addEventListener('click',()=>{
	alert('조회되었습니다.')
})



