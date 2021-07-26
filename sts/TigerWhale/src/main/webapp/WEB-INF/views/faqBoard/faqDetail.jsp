<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 write-wrap">
				
				<form action="faqModify" method="post">
					<input type="hidden" name='bno' value='${boardVO.bno}'>
					
					<div class="article-header">
						${boardVO.title}
					</div>
				
					<div class="title-toolbar">
						<span class="title-toolbar-left">
							작성자: ${boardVO.writer}
						</span>
						<span class="title-toolbar-right">
							작성일: <fmt:formatDate value="${boardVO.regdate}" pattern="yyyy-MM-dd" />
						</span>
					</div>
					
					<div class="article-content">
						<div>
							<c:out value="${boardVO.content}" escapeXml="false" />
						</div>
					</div>
					<br>
					
					<!-- 관리자의 FAQ답글기능 -->
					<c:if test="${boardVO.reply == null}">
						<form action="replyForm" method="post" name="replyForm">
							<textarea name="reply"></textarea>
							<input type="hidden" name='bno' value="${boardVO.bno }">
							<button type="submit" class="btn btn-primary">답변등록</button>
						</form>
					</c:if>
					<c:if test="${boardVO.reply != null}">
						<div class="title-toolbar">
							<span class="title-toolbar-left">
								답변드립니다
							</span>
							<span class="title-toolbar-right">
								답변일: <fmt:formatDate value="${boardVO.replydate}" pattern="yyyy-MM-dd" />
							</span>
						</div>
						<div class="article-content">
							<div>
								답변내용: ${boardVO.reply}<br>
							</div>
						</div>
						<hr>
					</c:if>

					
					
	<%-- 					
						<c:if test="${sessionScope.userVO != null}">
	세션완성후 구현						<button type="submit" class="btn btn-primary">변경</button>
						</c:if> 
	--%>
					<div class="faq-buttons">
						<button type="submit" class="btn btn-primary">변경</button>
						<button type="button" class="btn btn-dark" onclick="location.href='faqList'">목록</button>
					</div>
					
				</form>
						
							
						
						
						



				

			</div>
		</div>
	</div>
</section>




