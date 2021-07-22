<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-12" style="float: none; margin: 0 auto;">

				<h1 class="main">전화번호 수정</h1>
				<section class="item-section">
					<form action="">
						<legend class="col-form-label">전화번호</legend>

						<input type="text" name="user-phone" placeholder="휴대전화 번호를 입력하세요" class="form-control">
					</form>
				</section>
				<div class="button-group">
					<a href="${pageContext.request.contextPath}/mypage/mypageModify" class="btn btn-cancel btn-active btn-outline-secondary">취소</a> <a href="" class="btn btn-primary">수정완료</a>

				</div>
			</div>
		</div>
	</div>
</section>