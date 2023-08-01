## Date 객체
    // 현재 시간으로 Date 객체 생성
    const now = new Date();

    // 특정 날짜와 시간으로 Date 객체 생성 (월은 0부터 시작하므로 9는 10월을 나타냄)
    const specificDate = new Date(2023, 9, 15, 12, 30, 0);

## 날짜 및 시간 정보 얻기
    const date = new Date();

    const year = date.getFullYear();    // 연도 (e.g., 2023)
    const month = date.getMonth();      // 월 (0부터 시작하므로 0은 1월을 나타냄)
    const day = date.getDate();         // 일 (1부터 시작)
    const hour = date.getHours();       // 시간 (0부터 23까지)
    const minute = date.getMinutes();   // 분 (0부터 59까지)
    const second = date.getSeconds();   // 초 (0부터 59까지)
    const dayOfWeek = date.getDay();    // 요일 (0: 일요일, 1: 월요일, ..., 6: 토요일)

## 날짜 및 시간 설정
    const date = new Date();

    date.setFullYear(2024);    // 연도를 2024로 설정
    date.setMonth(11);         // 월을 12월로 설정 (11은 12월을 나타냄)
    date.setDate(25);          // 일을 25일로 설정
    date.setHours(18);         // 시간을 18시로 설정
    date.setMinutes(30);       // 분을 30분으로 설정
    date.setSeconds(0);        // 초를 0초로 설정

## 날짜 포맷팅
    const date = new Date();

    const formattedDate = date.toLocaleString();            
    // 브라우저의 로케일에 맞는 문자열로 변환
    const customFormattedDate = date.toISOString();        
    // ISO 8601 형식의 문자열로 변환 (e.g., "2023-08-01T12:30:00.000Z")
    const customFormat = `${date.getFullYear()}-${date.getMonth() + 1}-${date.getDate()}`;  
    // 원하는 형식으로 직접 포맷팅

## 날짜 간의 차이 계산
    const date1 = new Date('2023-08-01');
    const date2 = new Date('2023-09-15');

    const timeDiff = date2 - date1;         // 두 날짜 간의 밀리초(ms) 단위 차이
    const daysDiff = Math.floor(timeDiff / (1000 * 60 * 60 * 24));   // 날짜 단위 차이


