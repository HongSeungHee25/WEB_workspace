/**
 * 
 */

 const today = new Date()
 
 function dateFormat(vdate){
	 const year = vdate.getFullYear()
	 const month = (vdate.getMonth()+1).toString().padStart(2,'0')
	 const date = vdate.getDate().toString().padStart(2,'0')
	 
	 let result = [year,month,date].join('-')
	 
	 return result
 }
 
 const rentdate = document.getElementById('lblstartdate')
 rentdate.value = today
 
 const enddate = document.getElementById('lblcheckdate')

 
 
 
 document.getElementById('rentBtn').addEventListener('click',()=>{
	 const customid = document.getElementById('lblId').value
	 const bookcode = document.getElementById('lblcode').value
	 
	 alert(customid+' 회원님. 대여 도서['+bookcode+'] 의 반납 기한 날짜는 '+enddate+' 입니다.')
	
	 
 })