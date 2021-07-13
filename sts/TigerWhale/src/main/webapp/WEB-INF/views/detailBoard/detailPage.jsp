<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
							<a href="###" class="vgig-site-map">${catagoryBoardVO.bigCategory}</a><span>></span> <a href="###" class="vgig-site-map">${catagoryBoardVO.middleCategory}</a><span>></span> <a href="###" class="vgig-site-map">${catagoryBoardVO.smallCategory}</a>
						</div>

						<div class="GigMainGallery">
							<div class="LazyLoad">
								<c:forEach var="vo" items="${IMGBoardVO}">
								  <tr>
								  <td>
									<img src="../resources/img/detailPageImg/${vo.img}.jpg">									  
								  </td>
								  </tr>
								  
								</c:forEach>
							</div>
						</div>

						<div class="GigRate">
							****
							<h3 class="rate">3.5</h3>
							<h5 class="count">${repyBoardVO.size()}개의평가</h5>
						</div>

						<div class="GigNavigator">
							<ul class="gig-navigation-box">
								<li class="gig-navigation active">
									<div class="gig-navigation-title A">
										설명1
										</divc>
								</li>

								<li class="gig-navigation active">
									<div class="gig-navigation-title B">
										설명2
										</divc>
								</li>

								<li class="gig-navigation active">
									<div class="gig-navigation-title C">
										설명3
										</divc>
								</li>
							</ul>
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
										<li class="active"><a href="#home"> 1 옵션 </a></li>
										<li><a href="#menu1"> 2 옵션 </a></li>
										<li><a href="#menu2"> 3 옵션</a></li>
									</ul>

									<div class="tab-content">
										<div id="home" class="tab-pane fade in active">
											<div class="package-header">
												<span class="package-price">50,000원</span> <span class="package-type">Standard</span>
											</div>
											<div class="package-body">
												<div class="GigPackageOption">
													<table border="1px">
														<tr>
															<td class="A"><a href="##">월</a></td>
															<td class="B"><a href="##">화</a></td>
															<td class="C"><a href="##">수</a></td>
															<td class="D"><a href="##">목</a></td>
															<td class="E"><a href="##">금</a></td>
															<td class="F"><a href="##">토</a></td>
															<td class="G"><a href="##">일</a></td>
														</tr>
													</table>
												</div>

												<div class="map">
													<div class="address">
														<span> - 만남장소</span>
														<p>경기도 성남시 분당구 중앙공원로 54</p>
													</div>
													<div id="map" class="mapinmap"></div>

												</div>

												<div class="package-direct-order">
													<button type="button" class="btn">
														<span>구매하기</span>
													</button>
												</div>

											</div>
										</div>
										<div id="menu1" class="tab-pane fade"></div>
										<div id="menu2" class="tab-pane fade"></div>
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
							<li class="host_mail"><span class="host_info_title">이메일</span> <span> : </span> <span class="host_info_txt">${usersVO.userEmail1}@n${usersVO.userEmail2}</span></li>

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
								<input type="text" class="form-control" placeholder="이름" name="replyID" id="replyID"> <input type="password" class="form-control" placeholder="비밀번호" name="replyPW" id="replyPW">
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
				<button type="button" class="btn btn-default btn-block" id="moreList">더보기</button>
			</div>
		</div>
	</div>
</section>
<script>
            $(document).ready(function () {
                $(".nav-tabs a").click(function () {
                    $(this).tab('show');
                });
            });
        </script>
<script>

            $("#gig-navigation-title_A").click(function () {
                var location = document.querySelector(".A").offsetTop;
                window.scrollTo({ top: location, behavior: 'smooth' });
            });

            $("#gig-navigation-title_B").click(function () {
                var location = document.querySelector(".B").offsetTop;
                window.scrollTo({ top: location, behavior: 'smooth' });
            });

            $("#gig-navigation-title_C").click(function () {
                var location = document.querySelector(".C").offsetTop;
                window.scrollTo({ top: location, behavior: 'smooth' });
            });



        </script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c9c2c80f44b7412a52bfb0036f525c9"></script>
<script>
            var container = document.getElementById('map');
            var options = {
                center: new kakao.maps.LatLng(33.450701, 126.570667),
                level: 3
            };

            var map = new kakao.maps.Map(container, options);
        </script>