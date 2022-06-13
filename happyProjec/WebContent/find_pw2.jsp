<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery.min.js"></script>
<style type="text/css">
@font-face {
	font-family: 'SUIT-Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Light.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'SUIT-Bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Bold.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'SUIT-Medium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Medium.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}


h4{
	font-family: 'SUIT-Light'; 
	margin-bottom: 8%;
	width:400px;
}

.login_content {
	display: block;
 	min-height: 83vh;
	position: relative;
	margin: 0 auto;
	width: 100%;
/* 	box-sizing: inherit; */
	display: flex;
	justify-contents: center;
	align-items: center;
}

.signIn {
	position: relative;
	box-sizing: inherit;
	margin: 0 auto;
	width: 100%;
}

.signIn_form {
	padding: 4rem 12.3rem 6.1rem;
	display: flex;
	flex-direction: column;
	align-items: center;
	max-width: 108.2rem;
	margin: 0 auto;
	text-align: center;
	border-radius: 1.5rem;
	box-sizing: inherit;
}

/* signIn_header */
.signIn_header {
	margin-bottom: 2.4rem;
	box-sizing: inherit;
}

img {
	vertical-align: middle;
}

/* signForm_middle */
.signForm_middle {
	margin: -30px;
}

.titleText {
	text-align: left;
	color: #545454;
	margin-top: 0.4rem;
	font-family: 'SUIT-Light';
	color: #00AFFF;
}

.inputText {
	position: relative;
	font-family: 'SUIT-Light';
	margin-bottom: 25px;
}

input {
	font-size: 0.9rem;
	padding: 0.5rem;
	appearance: none;
	border: none;
	border-bottom: 0.1rem solid #dde0ea;
	box-shadow: none;
	width: 60%;
	height: 2rem;
	color: #545454;
	writing-mode: horizontal-tb;
	outline: none;
}

input:focus {
  	border-bottom: 3px solid RGB(190,222,255);
}

#button_for_email {
	width: 30%;
	border-radius: 0.7rem;
	position: relative;
	border: none;
	cursor: pointer;
	padding: 0.6rem 0.5rem;
	background-color: #C8FAC8;
	font-family: 'SUIT-Bold';
}

.error_next_box {
    margin-top: 9px;
    font-size: 12px;
    color: red;  
    text-align: left;  
    padding-left: 10px;
}

</style>
</head>
<body>
	<div class="login_content">
		<div class="signIn_form">

			<!-- 로그인 윗부분 -->
			<div class="signForm_top">
				<div class="signIn_header">
					<img src="../images/logo.png" alt="로고" width="250" height="180">
				</div>
			</div>

			<div class="signForm_middle">
				<form>
					<h1 style="font-family: 'SUIT-Bold'">비밀번호 찾기</h1>
					<h4>
						가입하실 때 사용한 회원님의 이메일(아이디)을 입력해 주세요.
					</h4>
					<div class="inputText">
						<input type="text" id="email" class="form-control" placeholder="이메일을 입력해 주세요." style="background-color: white">
						<button type="button" id="button_for_email" style="color:#2C952C">인증번호 발송</button>
						<div>
							<span class="error_next_box"></span>
        				</div>
					
					</div>

					<div class="certificationText">
						<input type="email" class="form-control" placeholder="인증번호를 입력해 주세요." disabled="disabled" style="background-color: white">
						<button type="button" id="button_for_email" style="color:#2C952C">인증번호 입력</button>

					</div>
					<input type="submit" autocomplete="off" style="display: none;">
				</form>
			</div>
		</div>
	</div>
	
	<script>
		$(document).ready(function(){
			
	    let id = document.querySelector('#email');
	    let error = document.querySelector('.error_next_box');
	    
	    id.addEventListener("focusout", checkId);
	    
	    function checkId(){
	    	let idPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/

	        if(!idPattern.test(id.value)){	//정규표현식을 통과하지 못한다면
// 	        if(id.value != idPattern){	//정규표현식을 통과하지 못한다면
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