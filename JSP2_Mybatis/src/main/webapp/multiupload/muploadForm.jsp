<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일업로드 폼</title>
</head>
<body>
<!-- 파일 업로드 하기 -->
<h3>상품 등록</h3>
<hr>
<a href="mproductListView.jsp"><button>상품 목록</button></a><br><br>
<form action="muploadAction.jsp" method="post" enctype="multipart/form-data">
	<input type="text" name="pname" placeholder="상품명을 입력하세요."><br>
	<input type="number" name="price" placeholder="가격을 입력하세요."><br>
	<input type="file" name="picture1" accept="image/*"><br>
	<input type="file" name="picture2" accept="image/*"><br>
	<input type="file" name="picture3" accept="image/*"><br>
	<input type="file" name="picture4" accept="image/*"><br>
	<!-- accept 속성은 파일의 형식을 지정하는 MIME 타입으로 합니다.
		 image/* 는 모든 이미지 파일 형식.(MIME 타입은 모질라 개발자 사이트 참고)
		 (.jpeg,.png, .jpg) -> 여러개 선택하고 싶을때 
	 -->

<button>등록</button>
</form>
</body>
</html>