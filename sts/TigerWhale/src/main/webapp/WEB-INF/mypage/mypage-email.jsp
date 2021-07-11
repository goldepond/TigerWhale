<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-12" style="float: none; margin: 0 auto;">

				<h1 class="main">이메일 수정</h1>
				<section class="item-section">
					<form action="">
						<legend class="col-form-label">이메일</legend>
						<div class="email-box">
							<input type="email" name="user-email" placeholder="이메일을 입력해주세요." class="form-control"> <select class="email-item">
								<option value="">직접입력</option>
								<option value="@naver.com">@naver.com</option>
								<option value="@hanmail.net">@hanmail.net</option>
								<option value="@nate.com">@nate.com</option>
								<option value="@google.com">@google.com</option>
							</select>
						</div>
					</form>
				</section>
				<div class="button-group">
					<a href="../마이페이지 수정.html" class="btn btn-cancel btn-active btn-outline-secondary">취소</a> <a href="" class="btn btn-primary">수정완료</a>

				</div>
			</div>
		</div>
	</div>
</section>