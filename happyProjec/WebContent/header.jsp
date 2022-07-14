<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("login/login_style.css");</style>
<script src="http://code.jquery.com/jquery.min.js"></script>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<style type="text/css">
	@font-face {
	    font-family: 'SUIT-Medium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Medium.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	}
	
	@font-face {
    font-family: 'SUIT-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Bold.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
	}  
	
	
	.navbar-brand{
		margin-left: 4%;
	}
	
	.navbar-expand-lg .navbar-collapse{
		justify-content: end;
		margin-right: 70px;
	}
	
	.bg{
		background-color: white !important;
		box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
		-webkit-box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
	}
	
	.navbar-light .navbar-nav .nav-link{
		font-family: 'SUIT-Medium';
		font-size: 1.1rem;
		color: #545454 !important;
		letter-spacing: 2px;
	}
	
	.navbar-light .navbar-nav .active>.nav-link, .navbar-light .navbar-nav .nav-link.active, .navbar-light .navbar-nav .nav-link.show, .navbar-light .navbar-nav .show>.nav-lin{
		color: #545454;
	}
	
	.nav-link{
		margin-left: 15px;
		letter-spacing: 2px;
	}
	
	.logo-text{
		font-size: 1.05rem;
		color: #545454;
		font-family: 'SUIT-Bold';
		letter-spacing: 2px;
	}
</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg">
	  <a class="navbar-brand" href="index.jsp">
	  	<img src="/images/logo.png" width="110px" height="58px">
	  	<span class="logo-text">국내여행 플래너</span>
	  </a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">여행리뷰 <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">이용방법</a>
	      </li>
	      <li class="nav-item">
	        <button type="button" class="btn" data-toggle="modal" data-target="#exampleModal">
			  로그인
			</button>
			
			<!-- 로그인 모달창 -->
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel"></h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <!-- 로그인 -->
			      <div class="modal-body">
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
										<button class="kakao-login-btn" onclick="kakaoLogin();">
											<img class="kakao_logo" src="login/kakao_logo.png" width="30px" height="30px">
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
			      </div>
			    </div>
			  </div>
			</div>
			
	      </li>
	    </ul>
	  </div>
	</nav>
	
	<!-- 로그인 유효성 검사 -->
	<script>
		// 이메일
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
	
	<!-- 카카오 로그인 -->
	<!-- 카카오 api 사용하기 위한 필수 스크립트 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	
	<!-- 로그인 구현 -->
	<script>
		Kakao.init('eed712455939a6a1be14f172d8584046'); //발급받은 키
		console.log(Kakao.isInitialized()); 			// sdk초기화여부판단
		
		function kakaoLogin() {
		    Kakao.Auth.login({
		      success: function (response) {	// param : 카카오 api 연결 응답
		        Kakao.API.request({
		          url: '/v2/user/me',
		          success: function (response) {// 응답 성공
		        	  console.log("로그인 성공" + response)
		          },
		          fail: function (error) {		// 응답 실패
		            console.log("로그인 실패" + error)
		          },
		        })
		      },
		      fail: function (error) {			// 응답 외의 에러
		        console.log("알 수 없는 에러" + error)
		      },
		    })
		  }
		
	</script>
	
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>	
</body>
</html>