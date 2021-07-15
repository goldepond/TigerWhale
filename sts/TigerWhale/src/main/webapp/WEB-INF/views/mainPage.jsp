
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section>
	<section>
		<div class="container-fluid AllBox">
			<div class="main-img">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ul class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ul>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">

						<div class="item active">
							<img src="../../resources/img/mainPageImg/html5.png" alt="CSS"
								style="height: 450px;">
							<div class="carousel-caption">
								<h3>1</h3>
								<p>죽겠다!</p>
							</div>
						</div>

						<div class="item">
							<img src="../../resources/img/mainPageImg/html5.png" alt="HTML"
								style="height: 450px;">
							<div class="carousel-caption">
								<h3>2</h3>
								<p>죽겠다데스!</p>
							</div>
						</div>

						<div class="item">
							<img src="../../resources/img/mainPageImg/jquery.png"
								alt="jquery" style="height: 450px;">
							<div class="carousel-caption">
								<h3>3</h3>
								<p>We love Apple!</p>
							</div>
						</div>
						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>


				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-9" style="padding: 0;"></div>
			</div>
		</div>
	</section>


	<div class="container main2 recentDiv">

		<div class="main2-title">
			<hr />
			<span class="title-para">내 지리 주변 강의</span>
			<hr />
		</div>

		<ul class="row recommand-list">
			<div class="address">
				<span> - 만남장소</span>
				<p>경기도 성남시 분당구 중앙공원로 54</p>
			</div>
			<li class="col-xs-6 col-sm-4 col-md-3 col-lg-5 lecture-ad">
				<div class="map">
					<div class="recommand-lecture">
						<div id="map" style="height: 200px;"></div>

					</div>
				</div>
			</li>
			<div class="flozt_left nearLocalAdd" style="float: left;">
				<!-- 스크립트 -->
			</div>
		</ul>

	</div>
	
	<div class="container main3">
				<div class="recentClass bestAdd">

					<hr />
					<span class="main2-title">Best 게시글</span>
					<hr />
					<!-- 스크립트 -->
				</div>
			</div>
			
		<button class="bestBtn boardBtn">이전</button>
		<button class="bestBtn boardBtn">다음</button>
		</ul>
	</div>
	
	<div class="container main2">
		<ul class="row recommand-list">
			<hr />
				<span class="main2-title">최신 게시글</span>
			<hr />
			<div class="newAdd">
				<!-- 스크립트 -->
			</div>

		<button class="recentBtn boardBtn">이전</button>
		<button class="recentBtn boardBtn">다음</button>
		</ul>
	</div>
	
	
	<div class="container main2">
		<div class="main2-title">
			<hr />
			<span class="title-para">인기멘토의 게시글</span>
			<hr />
		</div>
		<ul class="row recommand-list popularAdd">
			<!-- 스크립트 -->
		</ul>
		
		<button class="popularBtn boardBtn">이전</button>
		<button class="popularBtn boardBtn">다음</button>
	</div>
		
			

</section>


<aside class="quick-area">
	<ul class="quick-list">
		<li><a href="@@@">
				<h3>전화문의</h3>
				<p>010-123-456</p>
		</a></li>
		<li><a href="@@@">
				<h3>카카오톡</h3>
				<p>1:1상담</p>
		</a></li>
		<li><a href="@@@">
				<h3>오시는길</h3>
		</a></li>
	</ul>
</aside>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c9c2c80f44b7412a52bfb0036f525c9"></script>
<script>
            var container = document.getElementById('map');
            var options = {
                center: new kakao.maps.LatLng(33.450701, 126.570667),
                level: 3
            };

            var map = new kakao.maps.Map(container, options);
</script>


	<script>
		
		$(document).ready(function() {
			
			
			
			
			var loginCheck = sessionStorage.getItem('usersVO');
			if(loginCheck !== null)
			{
				$(".subscribeDiv").css("display","none");
				$(".recentDiv").css("display","none");
			}
			
			var popluarIndex = 8;
			var recentIndex = 8;
			var bestIndex = 2;
			
			sessionStorage.setItem("popluarIndex",popluarIndex);
			sessionStorage.setItem("recentIndex",recentIndex);
			sessionStorage.setItem("bestIndex",bestIndex);
			
			
			var boardBtn = document.querySelectorAll(".boardBtn");
			 
			for(var i=0; i<boardBtn.length; i++)
			{
				boardBtn[i].onclick = function(e)
				 {
					if(e.target.classList.contains("popularBtn") )
					{
						if(e.target.innerHTML == "다음"){
							popluarIndex += 8;
							if( popluarIndex > sessionStorage.getItem("popluarData")) popluarIndex = (sessionStorage.getItem("popluarData")-7);
							sessionStorage.setItem("popluarIndex",popluarIndex);
							getPopularPage();
						}
						else if(e.target.innerHTML == "이전"){
								popluarIndex -= 8;
								if(popluarIndex < 8) popluarIndex = 8;
								sessionStorage.setItem("popluarIndex",popluarIndex);
								getPopularPage();
						}
					}
					else if(e.target.classList.contains("recentBtn") )
					{
						if(e.target.innerHTML == "다음"){
							recentIndex += 8;
							if( recentIndex > sessionStorage.getItem("recentData")) recentIndex = (sessionStorage.getItem("recentData")-7);
							sessionStorage.setItem("recentIndex",recentIndex);
							getRecentBoard();
						}
						else if (recentIndex != 8){
							recentIndex -= 8;
							if(recentIndex < 8) recentIndex = 8;
							sessionStorage.setItem("recentIndex",recentIndex);
							getRecentBoard();
						}
						console.log(recentIndex);
					}
					else if(e.target.classList.contains("bestBtn") )
					{
						if(e.target.innerHTML == "다음"){
							bestIndex += 2;
							if( bestIndex > sessionStorage.getItem("besttData")) bestIndex = (sessionStorage.getItem("bestData")-7);
							sessionStorage.setItem("bestIndex",bestIndex);
							getBestBoard();
						}
						else if (bestIndex != 2){
							bestIndex -= 2;
							if(bestIndex < 2) bestIndex = 2;
							sessionStorage.setItem("bestIndex",bestIndex);
							getBestBoard();
						}
					}
				 }
			}
			 
			
			
			/* 내지리 주변 강의*/
        	
            var nearLocalAdd ="";
            for(var i = 0; i < 8; i++) 
            {
                nearLocalAdd += '<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3 lecture-ad">'
				nearLocalAdd += '<div class="recommand-lecture">'
				nearLocalAdd += '<img src="${pageContext.request.contextPath }/resources/img/mainPageImg/javascript.png" alt="es6">'
				nearLocalAdd += '<div class="lecture-content">'
				nearLocalAdd += '<p>자바스크립트 기본</p>'
				nearLocalAdd += '</div>'
				nearLocalAdd += '<div class="lecture-hover">'
				nearLocalAdd += '<a href="#"></a>'
				nearLocalAdd += '</div>'
				nearLocalAdd += '</div>'
			    nearLocalAdd += '</li>'
            }

            $(".nearLocalAdd").html(nearLocalAdd);
			
			
			
			
			
            function getPopularPage()
            {
				$.ajax({
					type: "post",
					url : "getPopularPage",
					dataType: "json",
					contentType : "application/json; charset=UTF-8",
					success: function(data){
						
						console.log("---pop");
	        			console.log(data);
	        			console.log("---pop");
					
						var popluarIndex = sessionStorage.getItem("popluarIndex");
						sessionStorage.setItem("popluarData" , data.length);	
											
							/*인기회원의 게시글 게시글*/
							var popularAdd ="";
			                for(var i = popluarIndex-8; i < popluarIndex; i++) 
			                {
			                	popularAdd += '<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3 lecture-ad">'
			                	popularAdd += '<div class="recommand-lecture">'
			                	popularAdd += '<img src="${pageContext.request.contextPath }/resources/img/mainPageImg/java.png" alt="java">'
			                	popularAdd += '<div class="lecture-content">'
			                	popularAdd += '<p>'+data[i].title+'</p>'
			                	popularAdd += '</div>'
			                	popularAdd += '<div class="lecture-hover">'
			                	popularAdd += '<a href="#"></a>'
			                	popularAdd += '</div>'
			                	popularAdd += '</div>'
			                	popularAdd += '</li>'
			                }
			                $(".popularAdd").html(popularAdd);
	
					},
					error : function(status,error){
						alert("등록 실패입니다. 잠시후에 시도하세요");
						console.log(error);
					}
				});
            }
			
            function getRecentBoard()
            {
            	
				$.ajax({
					type: "post",
					url : "getRecentBoard",
					dataType: "json",
					contentType : "application/json; charset=UTF-8",
					data : JSON.stringify({"bno":"1"}),
					success: function(data){
						
						console.log("---rece");
	        			console.log(data);
	        			console.log("---rec");
						
						var recentIndex = sessionStorage.getItem("recentIndex");
						sessionStorage.setItem("recentData" , data.length);	
						
						
						/* 최신 게시글*/
						var newAdd ="";
		                for(var i = recentIndex-8; i < recentIndex; i++) 
		                {
		                	newAdd += '<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3 lecture-ad">'
		                	newAdd += '<div class="recommand-lecture">'
		                	newAdd += '<img src="${pageContext.request.contextPath }/resources/img/mainPageImg/spring.jpg" alt="spring">'
		                	newAdd += '<div class="lecture-content">'
		                	newAdd += '<p>'+data[i].title+'</p>'
		                	newAdd += '</div>'
		                	newAdd += '<div class="lecture-hover">'
		                	newAdd += '<a href="#"></a>'
		                	newAdd += '</div>'
		                	newAdd += '</div>'
		                	newAdd += '</li>'
		                }
		                $(".newAdd").html(newAdd)
		                
					},
					error : function(status,error){
						alert("v팝퓰라실패");
						console.log(error);
					}
				});
				
            }
			
			
           	function getBestBoard()
           	{
           		
	        	$.ajax({
	        		type: "post",
	        		url : "getBestBoard",
	        		dataType: "json",
	        		contentType: "application/json; charset=UTF-8",
	        		success: function(data){
	        			
	        			console.log("---beset");
	        			console.log(data);
	        			console.log("---beset");
	        			
	        			
	        			var bestIndex = sessionStorage.getItem("bestIndex");
						sessionStorage.setItem("bestData" , data.length);	
	        			
	        			/* Best 게시글 */
						var bestAdd ="";
			            for(var i = bestIndex-2; i < bestIndex; i++) 
			            {
			                bestAdd += '<div class="board-recent">'
						    bestAdd += '<div class="content-recent">'
							bestAdd += '<a href="#" class="profile-board">'
							bestAdd += '<div class="profile-img">'
							bestAdd += '<img src="${pageContext.request.contextPath }/resources/img/mainPageImg/icon_profile.png">'
							bestAdd += '</div>'
							bestAdd += '<div class="profile-info">'
							bestAdd += '<span class="profile-name">'+data[i].user_ID+'</span> <span class="regist-time">1만년 전</span>'
							bestAdd += '</div>'
							bestAdd += '</a>'
							bestAdd += '<div class="content-detail">'
							bestAdd += '<a href="#" class="content-title"> <strong class="title-font">'+data[i].title+'</strong>'
							bestAdd += '</a> <a href="#" class="content-text">'+data[i].text+'</a>'
							bestAdd += '</div>'
							bestAdd += '<div class="content-comment">'
							bestAdd += '<span class="select-count"> 조회수 <em>10,000,000</em>'
							bestAdd += '</span> <span class="review-count"> 리뷰수 <em>6,000,000</em>'
							bestAdd += '</span>'
							bestAdd += '</div>'
						    bestAdd += '</div>'
						    bestAdd += '<div class="thumbnail-recent">'
							bestAdd += '<div class="thumbnail-recent">'
							bestAdd += '<div class="thumbnail-area">'
							bestAdd += '<a href="#" class="thumbnail-inner"> <img class="img-post" alt="postthumbnail" src="${pageContext.request.contextPath }/resources/img/mainPageImg/content1.jpg" width="167" height="167">'
							bestAdd += '</a> <a href="#" class="button-more-img"> <i class="sp_common icon_more"><span class="blind">글 썸네일 펼치기</span></i>'
							bestAdd += '</a>'
							bestAdd += '<div class="plus-thumbnail-list">'
							bestAdd += '<a href="#" class="list-inner">'
							bestAdd += '<div class="plus-list">'
							bestAdd += '<img class="plus-img" alt="추가이미지" width="167" height="167" src="${pageContext.request.contextPath }/resources/img/mainPageImg/content2.jpg">'
							bestAdd += '</div>'
							bestAdd += '<div class="plus-list">'
							bestAdd += '<img class="plus-img" alt="추가이미지" width="167" height="167" src="${pageContext.request.contextPath }/resources/img/mainPageImg/content3.jpg">'
							bestAdd += '</div>'
							bestAdd += '<div class="plus-list">'
							bestAdd += '<img class="plus-img" alt="추가이미지" width="167" height="167" src="${pageContext.request.contextPath }/resources/img/mainPageImg/content4.jfif">'
							bestAdd += '</div>'
							bestAdd += '</a>'
							bestAdd += '</div>'
							bestAdd += '</div>'
							bestAdd += '</div>'
						    bestAdd += '</div>'
					        bestAdd += '</div>'
			            }
			
			            $(".bestAdd").html(bestAdd);
	        		},
	        		error : function(status,error){
						alert("베스트글 컨트롤러 실패");
						console.log(error);
					}
	        		
	        	});
           	}

            getBestBoard();
            getRecentBoard();
            getPopularPage();
            
		})
	
	
	</script>