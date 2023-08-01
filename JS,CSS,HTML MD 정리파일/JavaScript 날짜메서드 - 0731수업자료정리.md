# 자바스크립트 날짜메서드
## 1. 현재 날짜와 시간
`new Date()`

## 2. 날짜를 직접 지정
`new Date(2023,8,15)`<br>
`new Date('2023-8-14')`

## 3. 날짜와 시간
`new Date(2023,8,15,11,23,45)`
`new Date('2023-8-15 11:23:45')`

## 4. 세계 표준시간 - UTC
`new Date().toUTCString()`

## 5. 세계 표준시간 - ISO
`new Date().toISOString()`

## 6. 현지(로컬.운영체제) 시간 - UTC
`new Date().toLocaleString()`

## 7. long 타입 시간값(1970년 01월01일 0시 기준 ms단위)
`new Date().getTime()`

## 8. 날짜 및 시간 관련 메소드
    let today = new Date()
    년도 : today.getFullYear()
    월 : today.getFullYear()
    일 : today.getFullYear()
    시 : today.getHours()
    분 : today.getMinutes()
    초 : today.getSeconds()

## 9. 날짜변경 메소드
    today = new Date()
    today.setFullYear(today.getFullYear()+3)
    //3년후 날짜
    today = new Date()
	today.setFullYear(today.getFullYear()-3)
    //3년전 날짜
    today = new Date()
    today.setMonth(today.getMonth()+20)
    //20개월 이후 날짜

    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    let mybirth = new Date('2000-09-25')
    나의 탄생일 : mybirth.toLocaleString()
    mybirth.setDate(mybirth.getDate()+10000)
    나의 탄생 10000일 기념일 : mybirth.setDate(mybirth.getDate()+10000)
    
 
