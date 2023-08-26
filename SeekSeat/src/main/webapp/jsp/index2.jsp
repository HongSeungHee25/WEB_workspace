<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEEK SEAT</title>
<link rel="stylesheet" type="text/css" href="../css/index2.css">
</head>

<body>
	<header>
		<div class="menu-toggle" id="menu-toggle">&#9776;</div>
		<button type="button" id="logo" onclick="location.href='index.jsp'">
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

	<section>
		<!-- 지도 넣기 -->
		<br>
		<br>
		<br>
		<br>
		<br>
		<div>지도 넣을 임시 코드</div>
		<br>
		<br>
		<br>
		<br>
		<div class="grid-container">
			<div class="grid-item">
				<div>
					<button>식당1</button>
				</div>
			</div>
			<div class="grid-item">
				<div>
					<button>식당2</button>
				</div>
			</div>
			<div class="grid-item">
				<div>
					<button>식당3</button>
				</div>
			</div>
			<div class="grid-item">
				<div>
					<button>식당4</button>
				</div>
			</div>
			<div class="grid-item">
				<div>
					<button>식당5</button>
				</div>
			</div>
			<div class="grid-item">
				<div>
					<button>식당6</button>
				</div>
			</div>
		</div>
	</section>
	
<footer>SEEKSEAT</footer>
<script src="https://kit.fontawesome.com/252e7f2829.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="../js/index.js"></script>
<script type="text/javascript" src="../js/sideMenu.js"></script>
</body>
</html>