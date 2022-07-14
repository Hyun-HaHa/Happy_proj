<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Happyever - 국내여행 플래너</title>
<script src="http://code.jquery.com/jquery.min.js"></script>
<style type="text/css">@import url("login_style.css");</style>
</head>
<body>
	<div class="login_content">
		<div class="signIn">
			<div class="signIn_form">
			
				<!-- 로그인 윗부분 -->
				<div class="signForm_top">
					<div class="signIn_header">
						<img src="../images/logo.png">
					</div>
				</div>
				
				<!-- 로그인 입력 부분 -->
				<div class="signForm_middle">
					<form>
						<p class="titleText">이메일</p>
						<div class="inputText">
							<input id="signForm_email" placeholder="이메일을 입력해 주세요." type="email">
							<p class="error-message_email"></p>
						</div>
						
						<p class="titleText">비밀번호</p>
						<div class="inputText">
							<input id="signForm_pw" placeholder="비밀번호를 입력해 주세요." type="password" autocomplete="current-password">
							<p class="error-message_pw"></p>
						</div>
						<input type="submit" autocomplete="off" style="display: none;">
					</form>
					
					<div class="signForm_submit">
						<button id="signForm_login" class="login_button">
							<span class="login_submit_text"><b>로그인</b></span>
						</button>
					</div>
				</div>
				<!-- 카카오 로그인 -->
				<div class="social-login">
					<div class="kakao-login">
						<button class="kakao-login-btn">
							카카오계정으로 로그인
						</button>
					</div>
				</div>
				<!-- 비밀번호 찾기, 회원가입 -->
				<p class="signForm_bottom">
					<span class="find-pw">
						<a href="../find_pw2.jsp">비밀번호 찾기</a>
					</span>
					<span class="signUp-btn">
						<a href="#">회원가입</a>
					</span>
				</p>
				
			</div>
		</div>
	</div>
	
	<script>
		$(document).ready(function(){
			
	    let id = document.querySelector('#signForm_email');
	    let error = document.querySelector('.error-message_email');
	    
	    id.addEventListener("focusout", checkId);
	    
	    function checkId(){
	    	let idPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/

	        if(!idPattern.test(id.value)){	//정규표현식을 통과하지 못한다면
	        	error.innerHTML = "올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.";
	        	error.style.display = "block";
	        } else{
	        	error.innerHTML = "";
	        }
	    }
		});
	</script>
</body>
</html>