//현재 시간
const today = new Date()

//0. yyyy-mm-dd 로 변환해주는 함수
function dateFormat(vdate){
	const year = vdate.getFullYear()
	const month = (vdate.getMonth()+1).toString().padStart(2,'0')
	const date = vdate.getDate().toString().padStart(2,'0')
	
	let result = [year,month,date].join('-')
	
	return result
}

//1. 가입일자 = 오늘 날짜
const joinDate = document.getElementById('lbljoin')
joinDate.value = dateFormat(today)

//2. 정보 보관 기간 불러오기
//3. 만료일자 = 가입일자 + 보관 기간
const keepYear = document.getElementById('lblRetention')
const endDate = document.getElementById('lblexpiration')

keepYear.addEventListener('change',()=>{
	//2
	const keep = keepYear.value
	//3
	//만료일자 = joinDate.value + keep 
	const year = today.getFullYear()+Number(keep)
	const month = (today.getMonth()+1).toString().padStart(2,'0')
	const date = today.getDate().toString().padStart(2,'0')
	
	let result = [year,month,date].join('-')
	//★★★★★★★ setDate(today.getFullYear()+Number(keep))

	endDate.value = result
})

document.getElementById('joinBtn').addEventListener('click',()=>{
	const name = document.getElementById('lblname')
	const Retention = document.getElementById('lblRetention')
	const citycode = document.getElementById('lblcode')
	const phone = document.getElementById('lblphone')
	const address = document.getElementById('lbladdr')
	const grade = document.getElementById('lblgrade')
	
	let isValid = true
	
	//이름 공백 불가
	if(name.value == ''){
		alert('이름은 필수 입력입니다.')
		name.focus()
		isValid = false
	}
	//전화번호 공백 불가
	if(phone.value == ''){
		alert('전화번호는 필수 입력입니다.')
		phone.focus()
		isValid = false
	}
	//주소 공백 불가
	if(address.value == ''){
		alert('주소는 필수 입력입니다.')
		address.focus()
		isValid = false
	}
	//보관기관 
	if(Retention.value == '0'){
		alert('보관 기관을 선택해주세요.')
		Retention.focus()
		isValid = false
	}
	//고객등급 
	const grades = ['A','B','C']
	if(!grades.includes(grade.value.toUpperCase())){
		alert('고객등급은 A, B, C 중 하나로 입력해야합니다.')
		grade.focus()
		isValid = false
	}
	//도시코드
	if(citycode.value == '0'){
		alert('도시 코드를 선택해주세요.')
		citycode.focus()
		isValid = false
	}
	
	if(isValid) alert('등록되었습니다.')
	else alert('등록 실패')
})
document.getElementById('checkBtn').addEventListener('click',()=>{
	alert('조회되었습니다.')
	})