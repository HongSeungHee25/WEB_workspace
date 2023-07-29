/**
 * 
 */
 // 페이지 로드 시 회원 정보를 폼에 채우는 함수
    function populateMemberInfo() {
      const urlParams = new URLSearchParams(window.location.search);
      const memberNo = urlParams.get('lblNo');
      document.getElementById("lblNo").value = memberNo;
      
      // 가상의 회원 정보를 가져와 폼에 채움
      const memberInfo = getMemberInfo(memberNo);
      document.getElementById("lblName").value = memberInfo.memberName;
      document.getElementById("lblPhone").value = memberInfo.phoneNumber;
      document.getElementById("lblAddre").value = memberInfo.address;
      document.getElementById("lbljoinDate").value = memberInfo.joinDate;
      document.getElementById("lblgrade").value = memberInfo.customerGrade;
      document.getElementById("lblcode").value = memberInfo.residenceArea;
    }

    // 가상의 회원 정보를 반환하는 함수
    function getMemberInfo(memberNo) {
      // 가상의 회원 정보를 객체로 반환 (실제 서버와의 통신 없이 클라이언트 측에서 데이터를 제공)
      const memberInfo = {
        100001: {
          memberName: "김행복",
          phoneNumber: "010-1111-2222",
          address: "서울 동대문구 휘경동",
          joinDate: "2015-12-02",
          customerGrade: "VIP",
          residenceArea: "01"
        },
        100002: {
          memberName: "이축복",
          phoneNumber: "010-1111-3333",
          address: "서울 동대문구 휘경동",
          joinDate: "2015-12-06",
          customerGrade: "일반",
          residenceArea: "01"
        },
        100003: {
          memberName: "장믿음",
          phoneNumber: "010-1111-4444",
          address: "울릉군 울릉읍 독도1리",
          joinDate: "2015-10-01",
          customerGrade: "일반",
          residenceArea: "30"
        },
        100004: {
          memberName: "최사랑",
          phoneNumber: "010-1111-5555",
          address: "울릉군 울릉읍 독도2리",
          joinDate: "2015-11-13",
          customerGrade: "VIP",
          residenceArea: "30"
        },
        100005: {
          memberName: "진평화",
          phoneNumber: "010-1111-6666",
          address: "제주도 제주시 외나무골",
          joinDate: "2015-12-25",
          customerGrade: "일반",
          residenceArea: "60"
        },
        100006: {
          memberName: "차공단",
          phoneNumber: "010-1111-7777",
          address: "제주도 제주시 감나무골",
          joinDate: "2015-12-11",
          customerGrade: "직원",
          residenceArea: "60"
        }
      };
      
      // 해당 회원 번호에 맞는 회원 정보를 반환
      return memberInfo[memberNo] || {};
    }

    // 폼 데이터를 서버로 전송하여 회원 정보를 수정하는 함수
    function updateMemberInfo() {
      // 여기서 폼 데이터를 서버로 전송하는 코드를 추가해야 합니다.
      // 이 예시에서는 수정 완료를 알리는 간단한 알림 창을 띄우도록 하겠습니다.
      alert('수정되었습니다.');
    }

    // 페이지 로드 시 회원 정보를 폼에 채웁니다.
    window.onload = populateMemberInfo;