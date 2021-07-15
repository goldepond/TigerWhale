<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 write-wrap">

				<div class="titlebox">
					<p>글쓰기</p>
				</div>

				<form action="detailWrite" method="post">
				
				
					<div class="form-group">
						<label>카테고리1</label> <input class="form-control" name='Category1' value="카테고리1">
					</div>
					<div class="form-group">
						<label>카테고리2</label> <input class="form-control" name='Category2' value="카테고리2">
					</div>
					<div class="form-group">
						<label>카테고리3</label> <input class="form-control" name='Category3' value="카테고리3">
					</div>
					
					
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name='writer' value="작성자" readonly>
					</div>

					<div class="form-group">
						<label>제목</label> <input class="form-control" name='title' value="제목"  required>
					</div>
					<div class="form-group">
						<label>이미지 선택</label> <input class="form-control" name='bno' value="이미지선택">
					</div>
					<div class="form-group">
						<label>대표 금액</label> <input class="form-control" name='money' value="123" required>
					</div>

					<div id="addoption"></div>
					<button type="button" class="right btn btn-default btn_option" id="replyRegis">옵션 추가하기</button>

					<div class="form-group">
						<label>설명1</label>
						<textarea class="form-control" rows="10" name='content1' required>설명1</textarea>
					</div>


					<div class="form-group">
						<label>설명2</label>
						<textarea class="form-control" rows="10" name='content2' required>설명2</textarea>
					</div>

					<div class="form-group">
						<label>설명3</label>
						<textarea class="form-control" rows="10" name='content3' required>설명3</textarea>
					</div>

					<button type="button" class="btn btn-dark" onclick="location.href = 'freeList'">목록</button>
					<button type="submit" class="btn btn-primary">저장</button>
				</form>
				<img src="/publishing/TestWeb/resources/js/pop/jusoPopup.jsp">
			</div>
		</div>
</section>

<script>

            //주소팝업
            function goPopup() {
                // var pop = window.open("${pageContext.request.contextPath}/resources/pop/jusoPopup.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
                var pop = window.open("/publishing/TestWeb/resources/js/pop/jusoPopup.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
            }

            function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
                // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
                document.getElementById("addrBasic").value = roadAddrPart1;
                document.getElementById("addrDetail").value = addrDetail;
                document.getElementById("addrZipNum").value = zipNo;
            }
            var btn = document.getElementById("replyRegis");
            console.log(addoption);
            var strAdd = "";
            var i = 0;
            btn.onclick = function () {
                strAdd += '<div class="option">'
                strAdd += '<div class="form-group">'
                strAdd += '<label>세부 금액</label>'
                strAdd += '<input class="form-control" name="bno${i}" value="123">'
                strAdd += '</div>'
                strAdd += '<div class="form-group">'
                strAdd += '<label>날짜</label>'
                strAdd += '<label for="from">From</label>'
                strAdd += '<input type="text" id="from" name="from${i}">'
                strAdd += '<label for="to">to</label>'
                strAdd += '<input type="text" id="to" name="to${i}">'
                strAdd += '</div>'
                strAdd += '<div class="form-group underSize">'
                strAdd += '<label for="addr-num">주소</label>'
                strAdd += '<div class="input-group">'
                strAdd += '<input type="text" class="form-control" name="addrZipNum${i}" id="addrZipNum"'
                strAdd += 'placeholder="우편번호" readonly>'
                strAdd += '<div class="input-group-addon">'
                strAdd += '<button type="button" class="btn btn-primary"'
                strAdd += 'onclick="goPopup()">주소찾기</button>'
                strAdd += '</div>'
                strAdd += '</div>'
                strAdd += '</div>'
                strAdd += '<div class="form-group">'
                strAdd += '<input type="text" class="form-control" name="addrBasic${i}" id="addrBasic"'
                strAdd += 'placeholder="기본주소">'
                strAdd += '</div>'
                strAdd += '<div class="form-group">'
                strAdd += '<input type="text" class="form-control" name="addrDetail${i}" id="addrDetail"'
                strAdd += 'placeholder="상세주소">'
                strAdd += '</div>'
                strAdd += '</div>'
                $("#addoption").html(strAdd);
                console.log($("#addoption"));
				i++;

            }

            //버튼 추가시 옵션 추가


        </script>