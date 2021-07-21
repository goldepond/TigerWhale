<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<section>
	<div class="container CCC">
		<!--container => 중앙위치 /      container-fluid -->
		<div class="row">
			<div class="col-sm-12" style="float: none; margin: 0 auto;">
				<div class="GigDetailContainer">
					<!--//////////////////////-->
					<div class="LeftModules">
						<div class="GigBreadcrumb">
							<!-- 카테고라ㅣ-->
							<a href="###" class="vgig-site-map">${categoryBoardVO.bigCategory}</a><span>></span> <a href="###" class="vgig-site-map">${categoryBoardVO.middleCategory}</a><span>></span> <a href="###" class="vgig-site-map">${categoryBoardVO.smallCategory}</a>
						</div>

						<div class="GigMainGallery">
							<div class="LazyLoad">

								<div id="myCarousel" class="carousel slide" data-ride="carousel">
									<!-- Indicators -->
									<ol class="carousel-indicators">
																	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
										<c:forEach var="vo" items="${IMGBoardVO}" begin="1" varStatus="status">

										<li data-target="#myCarousel" data-slide-to="1" value="${status.count}"></li>
										</c:forEach>
									</ol>

									<!-- Wrapper for slides -->
									<div class="carousel-inner" role="listbox">

										<div class="item active">
											<img src="../resources/img/detailPageImg/${IMGBoardVO[0].img}" alt="Chania" width="460" height="345">
										</div>
										<c:forEach var="vo" items="${IMGBoardVO}" begin="1">
											<div class="item">
												<img src="../resources/img/detailPageImg/${vo.img}" alt="Chania" width="460" height="345">
											</div>
										</c:forEach>


									</div>

									<!-- Left and right controls -->
									<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> 
										<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
										<span class="sr-only">Previous</span>
									</a> 
									<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> 
										<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
										<span class="sr-only">Next</span>
									</a>
								</div>












							</div>
						</div>

						<div class="GigRate">
							****
							<h3 class="rate">3.5</h3>
							<h5 class="count">${replyBoardVO.size()}개의평가</h5>
						</div>

						<div class="GigNavigator">
							<div class="gig-navigation-box menuBtn">
								<button class="share-btn btn-xss btn dropdown-toggle gig-navigation active sidenav" id="gig-navigation-title_A">설명1</button>

								<button class="share-btn  btn dropdown-toggle gig-navigation active" id="gig-navigation-title_B">설명12</button>

								<!--  -->
								<button class="share-btn btn-xss btn dropdown-toggle gig-navigation active" id="gig-navigation-title_C">설명13</button>


							</div>
						</div>
						<div class="GigDescription">
							<div class="description-box">

								<div class="intro1">

									<div class="GigLeftTitle A">
										<h3>설명1</h3>
									</div>
									${textBoardVO.text1}
								</div>
								<br /> <br />
								<div class="intro2">
									<div class="GigLeftTitle B">
										<h3>설명2</h3>
									</div>
									${textBoardVO.text2}
								</div>
								<br /> <br />
								<div class="intro3">
									<div class="GigLeftTitle C">
										<h3>설명3</h3>
									</div>
									${textBoardVO.text3}
								</div>

							</div>
						</div>
					</div>

					<!--//////////////////////-->
					<div class="RightModules">
						<div class="upBox">
							<div class="GigBookMarks">
								<div class="GigDetailShare">
									<button class="share-btn btn-xss btn dropdown-toggle">*</button>
								</div>
								<div class="GigHeart">
									<button id="carBtn" type="button">
										<span>찜하기</span> <span>|</span> <span>34</span>
									</button>
								</div>

							</div>
							<!------------------------------------->
							<div class="GigTitle">
								<h1>${mainBoardVO.title}</h1>
								<div class="gig-detail-price">
									<h3>
										"${mainBoardVO.price}원" <span>~</span>
									</h3>
									<h5 class="margin-none1">(VAT 포함가)</h5>
								</div>
							</div>
							<!------------------------------------->
							<div class="GigPackages">
								<div class="gig-detail-pacakage-panel">
									<!-- //////////////////////////////////////////////////////// -->
									<ul class="nav nav-tabs">
										<li class="active"><a href="#home"> 공통 정보 </a></li>
										<c:forEach var="vo" items="${m_boardVOFirst}" varStatus="status">
											<li><a href="#menu${status.count}"> ${status.count} 옵션 </a></li>
										</c:forEach>
									</ul>
									<div class="tab-content">
										<div id="home" class="tab-pane fade in active">
											<br />
											<div class="package-header">
												<span class="package-price">${textBoardVO.text1} 공통 안내 정보</span> <span class="package-type">Standard</span>
											</div>
										</div>

										<c:forEach var="vo" items="${m_boardVO}" varStatus="status">
											<form action="detailBuy" method="post" class="tab-pane fade" id="menu${status.count}">
												<input type="hidden" name="bno" value="${m_boardVO.get(0).bno}">
												<div>
													<div class="package-header">
														<span class="package-price">${vo.money}원</span> <span class="package-type">Standard</span>
													</div>

													<div class="package-header">
														<h3>${vo.m_year1}월${vo.m_month1}일~${vo.m_year2}월${vo.m_month2}일</h3>
													</div>
													<div class="package-body">
														<div class="GigPackageOption">
															<select id="time-select" name="rno">
																<option value="${bo.rno}">
																	<h2>요일 : ${bo.m_time1}시 ~ ${bo.m_time2}시 까지 ${bo.rno} 번</h2>
																</option>

																<c:forEach var="bo" items="${m_boardVO}" varStatus="option">
																	<option value="${bo.rno}">
																		<h2>요일 : ${bo.m_time1}시 ~ ${bo.m_time2}시 까지 ${bo.rno} 번</h2>
																	</option>

																</c:forEach>
															</select>

														</div>

														<div class="map">
															<div class="address">
																<span> - 만남장소</span>
																<p>${vo.addrBasic}</p>
															</div>
															<div id="map" class="mapinmap"></div>

														</div>

														<div class="package-direct-order">
															<button type="submit" class="btn">
																<span>구매하기</span>
															</button>
														</div>

													</div>

												</div>

											</form>
										</c:forEach>

									</div>
									<!-- //////////////////////////////////////////////////////// -->

								</div>
							</div>
						</div>
					</div>
					<div class="RightButtomModules">
						<ul class="hostInfo">
							<li class="host_name">
								<div class="host_img_wrap">
									<img src="../resources/img/userIMG/${userIMGBoardVO.img}.jpg">
								</div>
								<div class="host_name_wrap">${usersVO.user_ID}</div>
							</li>
							<li class="host_mail"><span class="host_info_title">이메일</span> <span> : </span> <span class="host_info_txt">${usersVO.userEmail1} @ ${usersVO.userEmail2}</span></li>

							<li class="host_phone"><span class="host_info_title">전화번호</span> <span> : </span> <span class="host_info_txt">${usersVO.userPhoneNumber}</span></li>
							<li class="host_intro">
								<p class="host_intro_2">
									${mainBoardVO.text}<br />
								</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container CCC">
		<div class="row">
			<div class="col-sm-12 write-wrap">
				<form class="reply-wrap">
					<div class="reply-image">
						<img src="image/2222.jpg">
					</div>
					<!--form-control은 부트스트랩의 클래스입니다-->
					<div class="reply-content">
						<textarea class="form-control" rows="3" name="reply" id="reply"></textarea>
						<div class="reply-group">
							<div class="reply-input">
								<input type="text" class="form-control" placeholder="이름" name="replyID" id="replyID">
							</div>
							<button type="button" class="right btn btn-info" id="replyRegist">등록하기</button>
						</div>

					</div>
				</form>

				<div id="replyList">
					<div class='reply-wrap'>
						<div class='reply-image'>
							<img src='image/2222.jpg'>
						</div>
						<div class='reply-content'>
							<div class='reply-group'>
								<strong class='left'>honggildong</strong> <small class='left'>2019/12/10</small> <a href='#' class='right'><span class='glyphicon glyphicon-pencil'></span>수정</a> <a href='#' class='right'><span class='glyphicon glyphicon-remove'></span>삭제</a>
							</div>
							<p class='clearfix'>여기는 댓글영역</p>
						</div>
					</div>
				</div>


				<div id="comment_people"></div>
				<button type="button" class="btn btn-default btn-block" id="moreList" style="background-color: red">더보기</button>
			</div>
		</div>
	</div>
</section>




<!-- 모달 ( 제이쿼리 modal("show") ) -->
<div class="modal fade" id="replyModal" role="dialog">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="btn btn-default pull-right" data-dismiss="modal">닫기</button>
				<h4 class="modal-title">댓글수정</h4>
			</div>
			<div class="modal-body">
				<!-- 수정폼 id값을 확인하세요-->
				<div class="reply-content">
					<textarea class="form-control" rows="4" id="modalReply" placeholder="내용입력"></textarea>
					<div class="reply-group">
						<div class="reply-input">
							<input type="hidden" id="modalRno"> <input type="password" class="form-control" placeholder="비밀번호" id="modalPw">
						</div>
						<button class="right btn btn-info" id="modalModBtn">수정하기</button>
						<button class="right btn btn-info" id="modalDelBtn">삭제하기</button>
					</div>
				</div>
				<!-- 수정폼끝 -->
			</div>
		</div>
	</div>
</div>




















<script>
	$(document).ready(function() {
		$(".nav-tabs a").click(function() {
			$(this).tab('show');
		});
	});
</script>
<script>
	$("#gig-navigation-title_A").click(function() {
		var location = document.querySelector(".A").offsetTop;
		window.scrollTo({
			top : location,
			behavior : 'smooth'
		});
	});

	$("#gig-navigation-title_B").click(function() {
		var location = document.querySelector(".B").offsetTop;
		window.scrollTo({
			top : location,
			behavior : 'smooth'
		});
	});

	$("#gig-navigation-title_C").click(function() {
		var location = document.querySelector(".C").offsetTop;
		window.scrollTo({
			top : location,
			behavior : 'smooth'
		});
	});
</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c9c2c80f44b7412a52bfb0036f525c9"></script>
<script>
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(33.450701, 126.570667),
		level : 3
	};

	var map = new kakao.maps.Map(container, options);
</script>

<script>
	//페이지처리 -
	//모든 a버튼을 눌렀을 때 a가 가지고 있는 pageNum값을 가지고 form태그로 이동하도록 처리
	//동적쿼리 이용해서 sql문 변경
	//화면에 검색키워드가 미리 남겨지도록 처리.
	var pagination = document.querySelector(".pagination");
	pagination.onclick = function() {
		event.preventDefault(); //고유이벤트 속성 중지
		if (event.target.tagName != 'A')
			return; //A가 아니라면 종료

		//사용자가 클릭한 페이지 번호를 form에 넣고 서브밋을 보냅니다.
		document.pageForm.pageNum.value = event.target.dataset.pagenum;
		document.pageForm.submit(); //서브밋		
	}

	window.onload = function() {

		if (history.state == '')
			return; //메시지를 출력했다면 함수종료

		var msg = '<c:out value="${msg }" />';
		if (msg != '') {
			alert(msg);
			//기존 기록을 삭제하고 새로운 기록을 추가 (이렇게 변경된 값은 history.state로 데이터를 확인가능)
			history.replaceState('', null, null); //브라우저 기록컨트롤 (추가할데이터, 제목, url주소)
			console.log(history.state);
		}

	}
</script>


<script>
	$(document)
			.ready(
					function() {
						//등록이벤트
						$("#replyRegist")
								.click(
										function() {
											//var bno = "${boardVO.bno}";
											var bno = "1"; //글 번호
											var reply = $("#reply").val();
											var replyId = $("#replyID").val();

											if (reply == '' || replyId == '') {
												alert("이름, 비밀번호, 내용은 필수입니다");
												return; //함수종료
											}
											console.log(bno);
											console.log(reply);
											console.log(replyId);
											$
													.ajax({
														type : "post",
														url : "../reply/replyRegist",
														dataType : "json",
														contentType : "application/json; charset=UTF-8",
														data : JSON.stringify({
															"bno" : bno,
															"reply" : reply,
															"user_ID" : replyId
														}),
														success : function(data) {
															if (data == 1) { //성공
																$("#reply")
																		.val("");
																$("#replyId")
																		.val("");
																getList(1, true); //데이터 조회 메서드 호출
															} else { //실패
																alert("등록에 실패했습니다. 다시 시도하세요");
															}

														},
														error : function(
																status, error) {
															alert("등록 실패입니다. 잠시 후에 다시 시도하세요");
														}
													});
										})

						//페이지 기능
						var page = 1; //페이지 번호
						var strAdd = ""; //댓글 목록 누적 변수

						$("#moreList").click(function() {
							getList(++page, false); //목록 호출 (페이지 넘버가 리셋되어야 하는경우 true)
						})

						getList(1, true); //데이터 조회 메서드 호출

						//데이터 조회
						function getList(pageNum, reset) {

							//var bno = "${boardVO.bno}"; 
							var bno = "1"; //게시글 번호

							$
									.getJSON(
											"../reply/getList/" + bno + "/"
													+ pageNum,
											function(data) {
												console.log(data);

												var total = data.total; //전체게시글 수
												var data = data.list; //목록

												//페이지에 조건처리
												if (page * 20 >= total) {
													$("#moreList").css(
															"display", "none"); //더보기 버튼 처리
												} else {
													$("#moreList").css(
															"display", "block");
												}

												//reset이 true라면 strAdd를 공백으로 비우고 page = 1로 변경하고 다시 호출
												if (reset == true) {
													strAdd = "";
													page = 1;
												}

												//누적할 문자열을 만들고 innerHTML형식으로 replyList아래에 삽입

												for (var i = 0; i < data.length; i++) {
													data[i].timegap
													strAdd += "<div class='reply-wrap'>";
													strAdd += "<div class='reply-image'>";
													strAdd += "<img src='../resources/img/userIMG/" + data[i].user_ID + ".jpg'>";
													strAdd += "</div>";
													strAdd += "<div class='reply-content'>";
													strAdd += "<div class='reply-group'>";
													strAdd += "<strong class='left'>"
															+ data[i].user_ID
															+ "</strong>";
													strAdd += "<small class='left'>"
															+ data[i].timegap
															+ "</small>";
													strAdd += "<a href='" + data[i].orderNum + "' class='right replyModify'><span class='glyphicon glyphicon-pencil'></span>수정</a>";
													strAdd += "<a href='" + data[i].orderNum + "' class='right replyDelete'><span class='glyphicon glyphicon-remove'></span>삭제</a>";
													strAdd += "</div>";
													strAdd += "<p class='clearfix'>"
															+ data[i].reply
															+ "</p>";
													strAdd += "</div>";
													strAdd += "</div>";

												}

												$("#replyList").html(strAdd); //추가

											})

						} //end getList

						//수정삭제
						/*
						에이잭스 실해이 더 늦게 완료가 되므로, 실제 이벤트 등록이 먼저 일어나게 됩니다. (정상 동작x)
						부모에 on함수를 이용해서 이벤트를 걸고 이벤트를 a태그에 전파시켜서 사용하는 방법. 
						 */

						$("#replyList").on("click", "a", function() {
							event.preventDefault(); //고유이벤트 중지

							//클릭한 대상의 번호를 모달창에 저장.
							var rno = $(this).attr("href");
							$("#modalRno").val(rno);

							//replyModify라면 수정창, replyDelete라면 삭제창의 형태로 사용
							if ($(this).hasClass("replyModify")) { //수정창

								$(".modal-title").html("댓글수정");
								$("#modalModBtn").css("display", "inline"); //수정버튼보여지도록 처리
								$("#modalDelBtn").css("display", "none"); //삭제버튼은 숨겨지도록 처리
								$("#modalReply").css("display", "inline"); //수정창 보여지도록

							} else { //삭제창

								$(".modal-title").html("댓글삭제");
								$("#modalModBtn").css("display", "none");
								$("#modalDelBtn").css("display", "inline");
								$("#modalReply").css("display", "none");
							}

							$("#replyModal").modal("show"); //부트스트랩 모달 함수

						});

						//수정 함수
						$("#modalModBtn")
								.click(
										function() {

											var orderNum = $("#modalRno").val();
											var reply = $("#modalReply").val();
											var replyPw = $("#modalPw").val();

											if (orderNum == '' || reply == ''
													|| replyPw == '') {
												alert("내용, 비밀번호는 필수 입니다");
												return;
											}
											$
													.ajax({
														type : "post",
														url : "../reply/update",
														contentType : "application/json; charset=UTF-8",
														data : JSON
																.stringify({
																	"orderNum" : orderNum,
																	"reply" : reply,
																	"user_ID" : replyPw
																}),
														success : function(data) {

															if (data == 1) { //업데이트 성공
																$("#modalReply")
																		.val(""); //내용비우기
																$("#modalPw")
																		.val("");
																$("#modalRno")
																		.val("");

																$("#replyModal")
																		.modal(
																				"hide"); //모달창 내리기
																getList(1, true); //조회 메서드 호출
															} else { //업데이트 실패
																alert("비밀번호를 확인하세요");
																$("#modalPw")
																		.val("");
															}

														},
														error : function(data) {
															alert("수정에 실패했습니다. 관리자에게 문의하세요");
														}
													});

										})

						//삭제함수
						$("#modalDelBtn")
								.click(
										function() {

											/*
											1. 모달창에서 rno값, replyPw값을 얻습니다
											2. ajax함수를 이용해서 POST방식으로 "reply/delete"요청을 보냅니다
												필요한 값은 REST API에서 JSON형식으로 받아서 처리
											3. 서버에서 요청을 받아서 비밀번호를 확인하고, 일치하면 삭제 진행
											4. 비밀번호가 틀린 경우에는 0을 반환하고 경고창을 띄워줍니다.
											 */
											var orderNum = $("#modalRno").val();
											var replyPw = $("#modalPw").val();

											if (orderNum == '' || replyPw == '') {
												alert("비밀번호를 입력하세요");
												return;
											}
											$
													.ajax({
														type : "post",
														url : "../reply/delete",
														contentType : "application/json; charset=UTF-8",
														data : JSON
																.stringify({
																	"orderNum" : orderNum,
																	"user_ID" : replyPw
																}),
														success : function(data) {
															if (data == 1) {
																alert("삭제성공");
																$("#modalRno")
																		.val("");
																$("#modalPw")
																		.val("");
																$("#replyModal")
																		.modal(
																				"hide");
																getList(1, true);
															} else {
																alert("비밀번호 오류");
																$("#modalPw")
																		.val("");
															}
														},
														error : function(data) {
															alert("삭제 실패 문의 요망");
														}
													});

										}); //end ready

					});
</script>
