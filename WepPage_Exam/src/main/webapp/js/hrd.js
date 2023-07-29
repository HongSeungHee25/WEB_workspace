// 시작 회원 번호
let currentMemberNumber = 100001;

// 자동으로 회원 번호 생성하는 함수
function generateMemberNumber() {
  // 회원 번호를 현재 번호로 설정
  document.getElementById('lblNo').value =  currentMemberNumber;
  
  // 다음 회원 번호로 증가
  currentMemberNumber++;
}

/*// 현재 날짜를 구하는 함수
function getCurrentDate() {
  const today = new Date();
  const year = today.getFullYear();
  const month = String(today.getMonth() + 1).padStart(2, '0');
  const day = String(today.getDate()).padStart(2, '0');
  return `${year}-${month}-${day}`;
}

// 가입일자를 오늘 날짜로 자동 설정하는 함수
function setJoinDate() {
  const joinDateElement = document.getElementById('joinDate');
  const currentDate = getCurrentDate();
  joinDateElement.value = currentDate;
}*/

// 페이지 로드 시 자동으로 회원 번호와 가입일자를 생성합니다.
window.onload = function() {
  generateMemberNumber();
  /*setJoinDate();*/
};

/*function clearPlaceholder() {
  var input = document.getElementById('lblPhone');
  if (input.value === input.getAttribute('value')) {
    input.value = '';
  }
}

function restorePlaceholder() {
  var input = document.getElementById('lblPhone');
  if (input.value === '') {
    input.value = input.getAttribute('value');
  }
}
*/

function clearPlaceholder(inputElement) {
    if (inputElement.value === inputElement.getAttribute('value')) {
      inputElement.value = '';
      inputElement.style.color = "#000"; // 수정된 부분
    }
  }

  // 입력란이 비어있으면 플레이스홀더 텍스트를 보여주고 색상을 #ddd로 변경하는 함수
  function restorePlaceholder(inputElement) {
    if (inputElement.value === '') {
      inputElement.value = inputElement.getAttribute('value');
      inputElement.style.color = "#ddd"; // 수정된 부분
    }
  }
