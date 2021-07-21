ㅁ<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 write-wrap">

				<div class="titlebox">
					<p>글쓰기</p>
				</div>

				<form action="detailInsert" method="post" enctype="multipart/form-data">

					<hr />
					<div class="form-group">
						<label>카테고리1</label> <select name="bigCategory" id="bigCategory">
							<c:forEach var="co" items="${categoryBoardVO}" varStatus="option">
								<option value="${co.bigCategory}">${co.bigCategory}</option>
							</c:forEach>
						</select>
					</div>


					<div class="form-group">
						<label>카테고리2</label> <select name="middleCategory" id="middleCategory">
							<!-- 여기 -->
						</select>
					</div>


					<div class="form-group">
						<label>카테고리3</label> <select name="smallCategory" id="smallCategory">
						</select>
					</div>

					<hr />
					<div id="fileUpload"></div>
					<button type="button" class="right btn btn-default btn_option" id="fileUploadBtn">파일 추가하기</button>


					<hr />
					<div class="form-group">
						<label>멘토/멘티 구분</label> <select name="boardType" id="boardType">
							<option value="멘토">멘토입니다</option>
							<option value="멘티">멘티입니다</option>
						</select>
					</div>


					<hr />

					<div class="form-group">
						<label>작성자</label> <input class="form-control" name='user_ID' value="작성자">
					</div>

					<div class="form-group">
						<label>제목</label> <input class="form-control" name='title' value="제목" required>
					</div>
					<div class="form-group">
						<label>간략 소개</label> <input class="form-control" name='text' value="">
					</div>
					<div class="form-group">
						<label>대표 금액</label> <input class="form-control" name='money' value="123" required>
					</div>

					<hr />
					<div id="addoption"></div>
					<button type="button" class="right btn btn-default btn_option" id="replyRegis">옵션 추가하기</button>
					<hr />
					<div class="form-group">
						<label>설명1</label>
						<textarea class="form-control" rows="10" name='text1' required>설명1</textarea>
					</div>


					<div class="form-group">
						<label>설명2</label>
						<textarea class="form-control" rows="10" name='text2' required>설명2</textarea>
					</div>

					<div class="form-group">
						<label>설명3</label>
						<textarea class="form-control" rows="10" name='text3' required>설명3</textarea>
					</div>
					<br />
					<button type="button" class="btn btn-dark" onclick="location.href = 'freeList'">목록</button>
					<button type="submit" class="btn btn-primary">저장</button>
					<hr />
				</form>
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

	var fileBtn = document.getElementById("fileUploadBtn");
	var fileAdd = "";
	var f = 0;
	fileBtn.onclick = function() {
		fileAdd += '파일선택:<input type="file" name="imguploadList[' + f+ '].file"><br/>'
		$("#fileUpload").html(fileAdd);
		f++;

	}

	var btn = document.getElementById("replyRegis");
	var strAdd = "";
	var i = 0;
	btn.onclick = function() {
		strAdd += '<div class="option">'

		strAdd += '<div class="form-group">'
		strAdd += '		<label>세부 금액</label>'
		strAdd += '		<input class="form-control" name="list[' + i + '].Money" value="123">'
		strAdd += '</div>'

		strAdd += '	<div class="form-group">'
		strAdd += '    <select name="list[' + i + '].M_year1">'
		strAdd += '       <option value="1">1월</option>'
		strAdd += '       <option value="2">2월</option>'
		strAdd += '       <option value="3">3월</option>'
		strAdd += '       <option value="4">4월</option>'
		strAdd += '       <option value="5">5월</option>'
		strAdd += '       <option value="6">6월</option>'
		strAdd += '       <option value="7">7월</option>'
		strAdd += '       <option value="8">8월</option>'
		strAdd += '       <option value="9">9월</option>'
		strAdd += '       <option value="10">10월</option>'
		strAdd += '       <option value="11">11월</option>'
		strAdd += '       <option value="12">12월</option>'
		strAdd += '    </select>'

		strAdd += '    <select name="list[' + i + '].M_month1">'
		strAdd += '       <option value="1">1일</option>'
		strAdd += '       <option value="2">2일</option>'
		strAdd += '       <option value="3">3일</option>'
		strAdd += '       <option value="4">4일</option>'
		strAdd += '       <option value="5">5일</option>'
		strAdd += '       <option value="6">6일</option>'
		strAdd += '       <option value="7">7일</option>'
		strAdd += '       <option value="8">8일</option>'
		strAdd += '       <option value="9">9일</option>'
		strAdd += '       <option value="10">10일</option>'
		strAdd += '       <option value="11">11월</option>'
		strAdd += '       <option value="12">12월</option>'
		strAdd += '       <option value="13">13일</option>'
		strAdd += '       <option value="14">14일</option>'
		strAdd += '       <option value="15">15일</option>'
		strAdd += '       <option value="16">16일</option>'
		strAdd += '       <option value="17">17일</option>'
		strAdd += '       <option value="18">18일</option>'
		strAdd += '       <option value="19">19일</option>'
		strAdd += '       <option value="20">20일</option>'
		strAdd += '       <option value="21">1일</option>'
		strAdd += '       <option value="22">22일</option>'
		strAdd += '       <option value="23">23일</option>'
		strAdd += '       <option value="24">24일</option>'
		strAdd += '       <option value="25">25일</option>'
		strAdd += '       <option value="26">26일</option>'
		strAdd += '       <option value="27">27일</option>'
		strAdd += '       <option value="28">28일</option>'
		strAdd += '       <option value="29">29일</option>'
		strAdd += '       <option value="30">30일</option>'
		strAdd += '    </select>'
		strAdd += '    ~'

		strAdd += '    <select name="list[' + i + '].M_year2">'
		strAdd += '       <option value="1">1월</option>'
		strAdd += '       <option value="2">2월</option>'
		strAdd += '       <option value="3">3월</option>'
		strAdd += '       <option value="4">4월</option>'
		strAdd += '       <option value="5">5월</option>'
		strAdd += '       <option value="6">6월</option>'
		strAdd += '       <option value="7">7월</option>'
		strAdd += '       <option value="8">8월</option>'
		strAdd += '       <option value="9">9월</option>'
		strAdd += '       <option value="10">10월</option>'
		strAdd += '       <option value="11">11월</option>'
		strAdd += '       <option value="12">12월</option>'
		strAdd += '    </select>'

		strAdd += '    <select name="list[' + i + '].M_month2">'
		strAdd += '       <option value="1">1일</option>'
			strAdd += '       <option value="2">2일</option>'
			strAdd += '       <option value="3">3일</option>'
			strAdd += '       <option value="4">4일</option>'
			strAdd += '       <option value="5">5일</option>'
			strAdd += '       <option value="6">6일</option>'
			strAdd += '       <option value="7">7일</option>'
			strAdd += '       <option value="8">8일</option>'
			strAdd += '       <option value="9">9일</option>'
			strAdd += '       <option value="10">10일</option>'
			strAdd += '       <option value="11">11월</option>'
			strAdd += '       <option value="12">12월</option>'
			strAdd += '       <option value="13">13일</option>'
			strAdd += '       <option value="14">14일</option>'
			strAdd += '       <option value="15">15일</option>'
			strAdd += '       <option value="16">16일</option>'
			strAdd += '       <option value="17">17일</option>'
			strAdd += '       <option value="18">18일</option>'
			strAdd += '       <option value="19">19일</option>'
			strAdd += '       <option value="20">20일</option>'
			strAdd += '       <option value="21">1일</option>'
			strAdd += '       <option value="22">22일</option>'
			strAdd += '       <option value="23">23일</option>'
			strAdd += '       <option value="24">24일</option>'
			strAdd += '       <option value="25">25일</option>'
			strAdd += '       <option value="26">26일</option>'
			strAdd += '       <option value="27">27일</option>'
			strAdd += '       <option value="28">28일</option>'
			strAdd += '       <option value="29">29일</option>'
			strAdd += '       <option value="30">30일</option>'
		strAdd += '    </select>'

		strAdd += '<div class="form-group">'
		strAdd += '<hr/>'
		strAdd += '	<label>시간</label>'
		strAdd += '	<label for="from">From</label>'
		strAdd += '    <select  name="list[' + i + '].M_time1">'
		strAdd += '       <option value="09">오전 09시</option>'
		strAdd += '       <option value="10">오전 10시</option>'
		strAdd += '       <option value="11">오전 11시</option>'
		strAdd += '       <option value="12">오후 12시</option>'
		strAdd += '       <option value="13">오후 1시</option>'
		strAdd += '       <option value="14">오후 2시</option>'
		strAdd += '       <option value="15">오후 3시</option>'
		strAdd += '       <option value="16">오후 4시</option>'
		strAdd += '       <option value="17">오후 5시</option>'
		strAdd += '       <option value="18">오후 6시</option>'
		strAdd += '       <option value="19">오후 7시</option>'
		strAdd += '       <option value="20">오후 8시</option>'
		strAdd += '       <option value="21">오후 9시</option>'
		strAdd += '       <option value="22">오후 10시</option>'
		strAdd += '       <option value="23">오후 11시</option>'
		strAdd += '       <option value="24">오후 12시</option>'
		strAdd += '       <option value="01">오전 01시</option>'
		strAdd += '       <option value="02">오전 02시</option>'
		strAdd += '    </select>'

		strAdd += '	<label for="to">to</label>'
		strAdd += '    <select  name="list[' + i + '].M_time2">'
		strAdd += '       <option value="09">오전 09시</option>'
		strAdd += '       <option value="10">오전 10시</option>'
		strAdd += '       <option value="11">오전 11시</option>'
		strAdd += '       <option value="12">오후 12시</option>'
		strAdd += '       <option value="13">오후 1시</option>'
		strAdd += '       <option value="14">오후 2시</option>'
		strAdd += '       <option value="15">오후 3시</option>'
		strAdd += '       <option value="16">오후 4시</option>'
		strAdd += '       <option value="17">오후 5시</option>'
		strAdd += '       <option value="18">오후 6시</option>'
		strAdd += '       <option value="19">오후 7시</option>'
		strAdd += '       <option value="20">오후 8시</option>'
		strAdd += '       <option value="21">오후 9시</option>'
		strAdd += '       <option value="22">오후 10시</option>'
		strAdd += '       <option value="23">오후 11시</option>'
		strAdd += '       <option value="24">오후 12시</option>'
		strAdd += '       <option value="01">오전 01시</option>'
		strAdd += '       <option value="02">오전 02시</option>'
		strAdd += '    </select>'
		strAdd += '<hr/>'
		strAdd += '</div>'

		strAdd += '   <div class="day">'
		strAdd += '       <input type="checkbox"  name="DTlist[0].M_day" value="Monday">월'
		strAdd += '       <input type="checkbox"  name="DTlist[1].M_day" value="Tuesday">화'
		strAdd += '       <input type="checkbox"  name="DTlist[2].M_day"  value="Wedensday">수'
		strAdd += '       <input type="checkbox"  name="DTlist[3].M_day" value="Thursday">목'
		strAdd += '       <input type="checkbox"  name="DTlist[4].M_day"  value="Friday">금'
		strAdd += '       <input type="checkbox"  name="DTlist[5].M_day" value="Saturday">토'
		strAdd += '       <input type="checkbox"  name="DTlist[6].M_day" value="Sunday">일'
		strAdd += '   </div>'
		strAdd += '  </div>'

		strAdd += '<div class="form-group underSize">'
		strAdd += '	<label for="addr-num">주소</label>'
		strAdd += '		<div class="input-group">'
		strAdd += '		<input type="text" class="form-control" name="list[' + i + '].addrZipNum" id="addrZipNum" placeholder="우편번호" readonly>'
		strAdd += '		<div class="input-group-addon">'
		strAdd += '			<button type="button" class="btn btn-primary"'
		strAdd += '			onclick="goPopup()">주소찾기</button>'
		strAdd += '		</div>'
		strAdd += '	</div>'
		strAdd += '</div>'

		strAdd += '<div class="form-group">'
		strAdd += '<input type="text" class="form-control" name="list[' + i + '].addrBasic" id="addrBasic" placeholder="기본주소">'
		strAdd += '</div>'

		strAdd += '<div class="form-group">'
		strAdd += '<input type="text" class="form-control" name="list[' + i + '].addrDetail" id="addrDetail" placeholder="상세주소">'
		strAdd += '</div>'

		strAdd += '   </div>'

		strAdd += '</div>'
		$("#addoption").html(strAdd);
		i++;

	}
</script>

<script>
	$("#bigCategory").change(function() {
		var bigCategory = $("#bigCategory").val();
		console.log(bigCategory);
		middleAdd = "";
		$.ajax({
			type : "post",
			url : "../detailBoard/detailWriteUpdate",
			contentType : "application/json; charset=UTF-8",
			data : JSON.stringify({
				"bigCategory" : bigCategory
			}),
			success : function(data) {
				for (var i = 0; i < data.length; i++) {
					middleAdd += '<option value="' + data[i].middleCategory + '">' + data[i].middleCategory + '</option>'
				}
				$("#middleCategory").html(middleAdd); //추가
			},
			error : function(status, error) {
				console.log(error);
			}
		})

	});
</script>

<script>
	$("#middleCategory").change(function() {
		var middleCategory = $("#middleCategory").val();
		console.log(middleCategory);
		smallAdd = "";
		$.ajax({
			type : "post",
			url : "../detailBoard/detailWriteUpdate",
			contentType : "application/json; charset=UTF-8",
			data : JSON.stringify({
				"middleCategory" : middleCategory
			}),
			success : function(data) {
				for (var i = 0; i < data.length; i++) {
					smallAdd += '<option value="${' + data[i].smallCategory + '}">' + data[i].smallCategory + '</option>'
				}
				$("#smallCategory").html(smallAdd); //추가
			},
			error : function(status, error) {
				console.log(error);
				alert("수정에 실패했습니다. 관리자에게 문의하세요");
			}
		})

	});
</script>