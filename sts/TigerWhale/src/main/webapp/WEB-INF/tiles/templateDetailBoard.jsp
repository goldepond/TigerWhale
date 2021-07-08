<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/webView/detailBoard/detailPage.js"></script>
<script src="${pageContext.request.contextPath}/webView/detailBoard/detailPageBuy.js"></script>

t>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/detailPage.CSS">

<!--
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
개인 디자인 추가
<link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
-->

</head>
<body>

	<!-- 첫번째 타일즈 템플릿 조립. -->
	<!-- name속성에는 실제파일명과 함께 tils.xml에서 사용할 이름이 지정됩니다. -->
	<tiles:insertAttribute name="header" />

	<tiles:insertAttribute name="body" />

</body>
</html>