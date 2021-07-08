<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" href="/publishing/TestWeb/resources/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/publishing/TestWeb/resources/bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="/publishing/TestWeb/resources/bootstrap/css/bootstrap.min.css">
	<title>Document</title>
	<style>
		/*==========자게 글쓰기==========*/
.titlebox {
	width: 250px;
	text-align: center;
	height: 40px;
	line-height: 40px;
	margin: 70px auto;
	border-top: 1px solid #E1E1E1;
	border-bottom: 1px solid #E1E1E1;
}

.t-control .t-title {
	width: 100px;
	min-width: 100px; /*화면줄었을때 최소크기*/
	vertical-align: middle; /*테이블에서 세로 가운대정렬*/
}

/*input 요소의 넓이만 선택*/
.t-control input {
	width: 200px;
	display: inline; /*인라인요소로 변경한다*/
}

/*개발자 도구에서 input-sm의 정렬을 푼다*/
.t-control .input-sm {
	height: auto;
	line-height: normal;
}
/*td의 아래만 밑줄*/
.t-control td {
	border-bottom: 1px solid #E1E1E1;
}

.titlefoot {
	text-align: center;
	margin: 30px auto; /*박스의 가운데정렬*/
	width: 50%; /*크기 50%*/
}
	</style>
</head>
<body>
    
</body>
</html>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 write-wrap">
                        <div class="titlebox">
                            <p>수정하기</p>
                        </div>
                        
                        <form action="freeUpdate">
                            <div>
                                <label>DATE</label>
                            	 <fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd" />
                            </div>   
                            <div class="form-group">
                                <label>번호</label>
                                <input class="form-control" name='bno' value="${vo.bno }" readonly>
                            </div>
                            <div class="form-group">
                                <label>작성자</label>
                                <input class="form-control" name='writer' value="${vo.writer }" readonly>
                            </div>    
                            <div class="form-group">
                                <label>제목</label>
                                <input class="form-control" name='title' value="${vo.title }" required>
                            </div>

                            <div class="form-group">
                                <label>내용</label>
                                <textarea class="form-control" rows="10" name='content' required>${vo.content }</textarea>
                            </div>

                            <button type="button" class="btn btn-dark" onclick="location.href = 'freeList'">목록</button>    
                            <button type="submit" class="btn btn-primary">변경</button>
                            <button type="button" class="btn btn-info " onclick="location.href = 'freeDelete?bno=${vo.bno}&${vo.writer}'">삭제</button>
                    </form>
                                    
                </div>
            </div>
        </div>
        </section>
      