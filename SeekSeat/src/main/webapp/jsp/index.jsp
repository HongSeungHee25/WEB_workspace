<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEEK SEAT</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
</head>

<body>
	<header>
		<div class="menu-toggle" id="menu-toggle">&#9776;</div>
		<button type="button" id="logo" onclick="location.href='main.jsp'">
			<img src="../image/로고.jpg" />
		</button>
		<button class="login"><span>LOGIN</span></button>
		<button class="join"><span>SIGN UP</span></button>
	</header>
	<div class="sidebar" id="sidebar">
		<ul>
			<li><a href="" class="menu-item">홈</a></li>
			<li><a href="" class="menu-item">메뉴 항목 2</a></li>
			<li><a href="" class="menu-item">고객센터</a></li>
		</ul>
	</div>

	<nav>
		<div class="search-container">
			<input type="search" id="searchInput" placeholder="Search...">
			<button id="searchButton">
				<i class="fas fa-duotone fa-magnifying-glass"></i>
			</button>
		</div>
	</nav>

	<section id="section1">
		<div class="slide_wrap">
			<div class="slide_show">
				<div class="slide_list">
					<div class="slide">
						<img src="../image/1.jpg" alt="이미지">
					</div>
					<div class="slide">
						<img src="../image/2.jpg" alt="이미지">
					</div>
					<div class="slide">
						<img src="../image/3.jpg" alt="이미지">
					</div>
					<div class="slide">
						<img src="../image/4.jpg" alt="이미지">
					</div>
					<div class="slide">
						<img src="../image/5.jpg" alt="이미지">
					</div>
					<div class="slide">
						<img src="../image/6.jpg" alt="이미지">
					</div>
				</div>
			</div>
			<div class="slide_btn">
				<button class="prev">prev</button>
				<button class="next">next</button>
			</div>
		</div>
	</section>
	<section class="scrollable-section" id="section2">
		<h2>커뮤니티</h2>
		<ul>
			<li>여기는 커뮤니티</li>
			<li>ㄴㅇㄻㅁㅁㅁㄴㅇㄹㄴㅇㄹ</li>
			<li>ㄴㅁㄹㅇㅇㅇㄴㅁㅇㄹㄴㅇㄹㄴㅇㄻㅁㄴㅇㄹ</li>
			<li>ㄴㅁㄹㅇㅇㅇㅇㅇㄴㅇㄹㅇㄹㅇㄴㅁㄹㄴㅇㅁㄹㄴㄹㅇㅁ</li>
		</ul>
	</section>
<footer>SEEKSEAT</footer>
<script src="https://kit.fontawesome.com/252e7f2829.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="../js/index.js"></script>
<script type="text/javascript" src="../js/sideMenu.js"></script>
<script type="text/javascript" src="../js/slideMain.js"></script>
</body>
</html>