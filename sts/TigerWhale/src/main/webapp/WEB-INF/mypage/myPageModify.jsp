<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section class="mypage">
	<div class="container">
		<div class="row">
			<div class="col-sm-12" style="float: none; margin: 0 auto;">
				<div class="account-info-container">
					<h1 class="main">계정 설정</h1>
					<div class="profile-image">
						<div class="user-profile-picture">
							<img src="../image/default-profile.svg" class="user-picture" alt="기본이미지">
						</div>
						<img src="../image/camera.svg" class="camera-icon">
					</div>
					<ul class="account-info">
						<li class="item-container" onclick="location.href = './mypage/mypage-name.html'">
							<div class="item">
								<div class="item-title">이름</div>
								<div class="item-info">이성빈</div>
							</div>
							<div class="glyphicon glyphicon-chevron-right"></div>
						</li>
						<li class="item-container" onclick="location.href = './mypage/mypage-email.html'">
							<div class="item">
								<div class="item-title">이메일</div>
								<div class="item-info">xxxx33@naver.com</div>
							</div>
							<div class="glyphicon glyphicon-chevron-right"></div>
						</li>
						<li class="item-container" onclick="location.href = './mypage/mypage-password.html'">
							<div class="item">
								<div class="item-title">비밀번호</div>
								<div class="item-info">●●●●●●●●●</div>
							</div>
							<div class="glyphicon glyphicon-chevron-right"></div>
						</li>
						<li class="item-container" onclick="location.href = './mypage/mypage-phone.html'">
							<div class="item">
								<div class="item-title">휴대전화 번호</div>
								<div class="item-info">010-xxxx-xxxx</div>
							</div>
							<div class="glyphicon glyphicon-chevron-right"></div>
						</li>

					</ul>
					<ul class="account-info">
						<li class="item-container">
							<div class="item">
								<div class="item-title">계정 탈퇴</div>
							</div>
							<div class="glyphicon glyphicon-chevron-right"></div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


</section>
