<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 write-wrap">
				<div class="titlebox">
					<p>상세보기</p>
				</div>

				<form action="faqModify" method="post">
					<div>
						<label>DATE</label>
						<p>
							<fmt:formatDate value="${boardVO.regdate}" pattern="yyyy-MM-dd" />
						</p>
					</div>
					<div class="form-group">
						<label>번호</label> <input class="form-control" name='bno' value='${boardVO.bno}' readonly>
					</div>
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name='writer' value='${boardVO.writer}' readonly>
					</div>
					<div class="form-group">
						<label>제목</label> <input class="form-control" name='title' value='${boardVO.title}' readonly>
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="10" name='content' readonly>${boardVO.content}</textarea>
					</div>
					
					
					
<%-- 					
					<c:if test="${sessionScope.userVO != null}">
세션완성후 구현						<button type="submit" class="btn btn-primary">변경</button>
					</c:if> 
--%>
					<button type="submit" class="btn btn-primary">변경</button>
					
					
					
					
					
					<button type="button" class="btn btn-dark" onclick="location.href='faqList'">목록</button>
				</form>
			</div>
		</div>
	</div>
</section>


