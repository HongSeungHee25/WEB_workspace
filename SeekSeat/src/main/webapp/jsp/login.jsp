<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="../css/login.css">
</head>
<body>	
	<div class="container" id="container">
	
		<div class="form-container sign-up-container">
			<form action="#">
				<h1>Create Account</h1>
				<br>
				<input type="text" placeholder="Id" /> 
				<input type="password" placeholder="Password" />
				<input type="text" placeholder="Name" /> 								 
				<input id="phone" type="text" size="11" maxlength="13" oninput="formatPhone()"
       			   placeholder="Phone">     			
				<input type="text" placeholder="Address" />
				<br>
				<button>Sign Up</button>
			</form>
		</div>
		
		<div class="form-container sign-in-container">
		
			<form action="#">
				<h1>LogIn</h1>	
				<br>			
				<input type="text" placeholder="Id" id="id"/> 
				<input type="password" placeholder="Password" id="pw" /> 
				<a href="#">Forgot your password?</a>	<!-- 비밀번호 재설정??? -->
				 <div class="button-container">
				<button class="customerLogin">Customer</button>				
				<button class= "businessLogin">Business</button>
				</div>
			</form>
		</div>
		
		<div class="form-container business-container" id = "business-container">
			<form action="#">
				<h1>Create Account</h1>				
				<input  id="businessno" type="text" size="11" maxlength="12" oninput="formatBusinessNo()"
          			placeholder="BusinessNo"/> 
				<input type="text" name="businessname" id="businessname" placeholder="Name"/> 								 
				<input id="businessphone" type="text" size="11" maxlength="13" oninput="formatBusinessPhone()"
          			placeholder="businessphone">     			
				<input type="text" name="businessadd" id="businessadd" placeholder="Address" />
				<input type="text" name="businessemail" id="businessemail" placeholder="Email"/>
				<input type="password" name="businesspass" id="businesspass" placeholder="Password" />
				<button>Sign Up</button>
			</form>
		</div>
	
	
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>To keep connected with us please login with your personal
						info</p>
					<button class="ghost" id="signIn">LogIn</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Sign Up!</h1>
					<p>Enter your personal details and start join with us</p>
					<button class="ghost" id="signUp">Customer</button>
					<br>
					<button class="ghost" id="b_signUp">Business</button>
				</div>
			</div>
			
		</div>
		</div>
	
	
	
	<script type="text/javascript" src="../js/login.js"></script>
</body>
</html>