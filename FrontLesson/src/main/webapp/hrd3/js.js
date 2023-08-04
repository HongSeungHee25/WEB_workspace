const today = new Date()

function dateFormat(vdate){
	const year = vdate.getFullYear()
	const month = (vdate.getMonth()+1).toString().padStart(2,'0')
	const date = vdate.getDate().toString().padStart(2,'0')
	
	let result = [year,month,date].join('-')
	
	return result
}

const joindate = document.getElementById('lbljoin')
joindate.value = dateFormat(today)

const keepYear = document.getElementById('lblRetention')
const enddate = document.getElementById('lblexpiration')

keepYear.addEventListener('change',()=>{
	const keep = keepYear.value
	
	const year = today.getFullYear()+Number(keep)
	const month = (today.getMonth()+1).toString().padStart(2,'0')
	const date = today.getDate().toString().padStart(2,'0')
	
	let result = [year,month,date].join('-')
	
	enddate.value = result
})

document.getElementById('joinBtn').addEventListener('click',()=>{
	const name = document.getElementById('lblname')
	
	let isV = true
	
	if(name.value==''){
		alert('이름은 필수 입력입니다.')
		.focus()
		isV=false
	}
	
	if(isV) alert('등록 성공')
	else ealert('등록 실패')
})


document.getElementById('checkBtn').addEventListener('click',()=>{
	alert('조회 성공')
})