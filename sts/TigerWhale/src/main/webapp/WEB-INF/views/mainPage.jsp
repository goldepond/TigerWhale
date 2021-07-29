
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
							<img src=" ${pageContext.request.contextPath }/resources/img/mainPageImg/main1.jpg" alt="CSS"
								style="min-width: 360px;">
							<div class="carousel-caption">
								<h3></h3>
								<p></p>
							</div>
						</div>

						<div class="item">
							<img src="${pageContext.request.contextPath }/resources/img/mainPageImg/main2.jpg" alt="HTML"
								style="min-width: 360px">
							<div class="carousel-caption">
								<h3></h3>
								<p></p>
							</div>
						</div>

						<div class="item">
							<img src="${pageContext.request.contextPath }/resources/img/mainPageImg/main3.jpg" alt="jquery"
								style="min-width: 360px">
							<div class="carousel-caption">
								<h3></h3>
								<p></p>
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
			<span class="title-para userId">${usersId }</span>
			<span class="title-para">님의 주변 강의</span>
			<button class="writeBtn">글쓰기</button>
			<hr />
		</div>

		<ul class="row recommand-list">
			<div class="address">
				<span></span>
				<p></p>
			</div>
			<li class="col-xs-6 col-sm-4 col-md-3 col-lg-5 lecture-ad">
				<div class="map">
					<div class="recommand-lecture">
						<div id="map" style="height: 400px; width: 700px;"></div>

					</div>
				</div>
			</li>
			<div class="flozt_left nearLocalAdd" style="float: left;">
				<!-- 스크립트 -->
			</div>
			<div class="nearDiv" style="display: flex">
			</div>
		</ul>

	</div>
	
	<div class="container main3">
				<hr />
					<span class="main2-title">Best 게시글</span>
				<hr />
				<div class="recentClass bestAdd">

					<!-- 스크립트 -->
				</div>
			</div>
			
		<div class="btnGroup">
			<button class="bestBtn boardBtn">이전</button>
			<button class="bestBtn boardBtn">다음</button>
		</div>
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
			<div class = "recentBtn">
				<button class="recentBtn boardBtn">이전</button>
				<button class="recentBtn boardBtn">다음</button>
			</div>
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
		
		<div class="btnGroup">
			<button class="popularBtn boardBtn">이전</button>
			<button class="popularBtn boardBtn">다음</button>
		</div>
	</div>
		
			

</section>


<aside class="quick-area">
	<ul class="quick-list">
		<li>
			<a href="faqBoard/faqList">
				<h3>FAQ</h3>
			</a></li>
		<li class="kakaoCounselling">
		</li>
	</ul>
</aside>

<div class="hiddenLa">${usersLa }</div>
<div class="hiddenMa">${usersMa }</div>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>

        Kakao.init('9cdd93761c8771defa3902f488e93711');
        
        Kakao.Channel.createAddChannelButton({
            container: document.querySelector(".kakaoCounselling"),
            channelPublicId: '_xixkkis' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
        });
        
    </script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9cdd93761c8771defa3902f488e93711"></script>
<script>
			var la = parseFloat(document.querySelector(".hiddenLa").innerHTML);
			var ma = parseFloat(document.querySelector(".hiddenMa").innerHTML);
			console.log(typeof(la));
			console.log(la);
			console.log(ma);

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(ma, la), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);
</script>


	<script>
		console.log(document.querySelector(".writeBtn"));
		document.querySelector(".writeBtn").onclick = function(){
			location.href = "detailBoard/detailWrite";
		}
		$(document).ready(function() {
			
			
			var loginCheck =document.querySelector(".userId").innerHTML;
			if(loginCheck == "")
			{
				$(".subscribeDiv").css("display","none");
				$(".recentDiv").css("display","none");
			}
			
			var nearIndex = 8;
			var popluarIndex = 8;
			var recentIndex = 8;
			var bestIndex = 2;
			
			sessionStorage.setItem("popluarIndex",popluarIndex);
			sessionStorage.setItem("recentIndex",recentIndex);
			sessionStorage.setItem("bestIndex",bestIndex);
			sessionStorage.setItem("nearIndex",nearIndex);
			
			
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
							if( bestIndex > sessionStorage.getItem("bestData")) bestIndex = (sessionStorage.getItem("bestData")-7);
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
					else if(e.target.classList.contains("nearBtn") )
					{
						if(e.target.innerHTML == "다음"){
							bestIndex += 8;
							if( bestIndex > sessionStorage.getItem("nearData")) bestIndex = (sessionStorage.getItem("nearData")-7);
							sessionStorage.setItem("nearIndex",nearIndex);
							getBestBoard();
						}
						else if (bestIndex != 8){
							bestIndex -= 8;
							if(bestIndex < 8) bestIndex = 8;
							sessionStorage.setItem("nearIndex",nearIndex);
							getBestBoard();
						}
					}
				 }
			}
			 
			/* 내지리 주변 강의 */
        	function getNearBoard()
			{
				console.log("asdd");
				console.log(la);
				$.ajax({
					type: "post",
					url : "getNearBoard",
					dataType: "json",
					contentType : "application/json; charset=UTF-8",
					data : JSON.stringify({"la":la , "ma":ma}),
					success : function(data)
					{
						
						console.log("쏴리질러");
						console.log(data);
						console.log("쏴리질러");
						
						var nearIndex = sessionStorage.getItem("nearIndex");
						sessionStorage.setItem("nearData" , data.length);	
						
						if(data.length < 8)
						{
							var nearDiv ="";
				            var nearLocalAdd ="";
				            for(var i = 0; i < data.length; i++) 
				            {
				                nearLocalAdd += '<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3 lecture-ad">'
								nearLocalAdd += '<div class="recommand-lecture" >'
								nearLocalAdd += '<img src="${pageContext.request.contextPath }/resources/img/detailPageImg/'+data[i].bno+'/'+data[i].imgBoardList[0].img+'" alt="es6" style= width="167; height=167;" >'
								nearLocalAdd += '<div class="lecture-content">'
								nearLocalAdd += '<p>'+data[i].title+'</p>'
								nearLocalAdd += '</div>'
								nearLocalAdd += '<div class="lecture-hover">'
								nearLocalAdd += '<a href="#"></a>'
								nearLocalAdd += '</div>'
								nearLocalAdd += '</div>'
							    nearLocalAdd += '</li>'
							    
							    var markerPosition  = new kakao.maps.LatLng(parseFloat(data[i].ma), parseFloat(data[i].la)); 
				                var marker = new kakao.maps.Marker({
				                    position: markerPosition
				                });
				                
				                var iwContent = '<div style="padding:5px;"> 게시글명 : '+data[i].title+' <br> <a href="https://map.kakao.com/link/to/Hello World!,'+parseFloat(data[i].ma)+','+parseFloat(data[i].la)+'" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				                iwPosition = new kakao.maps.LatLng(parseFloat(data[i].ma), parseFloat(data[i].la)); //인포윈도우 표시 위치입니다
	
					            var infowindow = new kakao.maps.InfoWindow({
					                position: iwPosition,
					                content: iwContent
					            });
				                
				                marker.setMap(map);
				                infowindow.open(map, marker); 
							}
			            }else
			            {
			            	var nearDiv ="";
			            	var nearLocalAdd ="";
				            for(var i = nearIndex-8; i < nearIndex; i++) 
				            {
				                nearLocalAdd += '<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3 lecture-ad">'
								nearLocalAdd += '<div class="recommand-lecture">'
								nearLocalAdd += '<img src="${pageContext.request.contextPath }/resources/img/detailPageImg/'+data[i].bno+'/'+data[i].imgBoardList[0].img+'" alt="es6" style= width="167; height=167;>'
								nearLocalAdd += '<div class="lecture-content">'
								nearLocalAdd += '<p>'+data[i].title+'</p>'
								nearLocalAdd += '</div>'
								nearLocalAdd += '<div class="lecture-hover">'
								nearLocalAdd += '<a href="#"></a>'
								nearLocalAdd += '</div>'
								nearLocalAdd += '</div>'
							    nearLocalAdd += '</li>'
							    
							    var markerPosition  = new kakao.maps.LatLng(parseFloat(data[i].ma), parseFloat(data[i].la)); 
				                var marker = new kakao.maps.Marker({
				                    position: markerPosition
				                });
				                
				                var iwContent = '<div style="padding:5px;"> 게시글명 : '+data[i].title+' <br> <a href="https://map.kakao.com/link/to/Hello World!,'+parseFloat(data[i].ma)+','+parseFloat(data[i].la)+'" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				                iwPosition = new kakao.maps.LatLng(parseFloat(data[i].ma), parseFloat(data[i].la)); //인포윈도우 표시 위치입니다

					            var infowindow = new kakao.maps.InfoWindow({
					                position: iwPosition,
					                content: iwContent
					            });
				                
				                marker.setMap(map);
				                infowindow.open(map, marker);
			            	}
			            }
			            $(".nearLocalAdd").html(nearLocalAdd);
						nearDiv += '<button class="nearBtn boardBtn">다음</button>'
						nearDiv += '<button class="nearBtn boardBtn">이전</button>'
						$(".nearDiv").html(nearDiv);
					},
					error : function(status,error)
					{
						//alert("니어컨트롤러 실패");
						console.log("니어실패");
					}
				});
			}
			
		
			
			
			
			
            function getPopularPage()
            {
				$.ajax({
					type: "post",
					url : "getPopularPage",
					dataType: "json",
					contentType : "application/json; charset=UTF-8",
					success: function(data){
						
						console.log(data);
						
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
						
						console.log(data);
						
						var recentIndex = sessionStorage.getItem("recentIndex");
						sessionStorage.setItem("recentData" , data.length);	
						
						
						/* 최신 게시글*/
						
						if(data.length < 8)
						{
							var newAdd ="";
			                for(var i = 0; i < data.length; i++) 
			                {
			                	newAdd += '<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3 lecture-ad">'
			                	newAdd += '<div class="recommand-lecture">'
			                	newAdd += '<img src="${pageContext.request.contextPath }/resources/img/detailPageImg/'+data[i].bno+'/'+data[i].imgBoardList[0].img+'" alt="spring" style= width="167; height=167;>'
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
						}else
						{
							var newAdd ="";
			                for(var i = recentIndex-8; i < recentIndex; i++) 
			                {
			                	newAdd += '<li class="col-xs-6 col-sm-4 col-md-3 col-lg-3 lecture-ad">'
			                	newAdd += '<div class="recommand-lecture">'
			                	newAdd += '<img src="${pageContext.request.contextPath }/resources/img/mainPageImg/spring.jpg" alt="spring" style= width="167; height=167;>'
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
						}
		                
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
	        			
	        			console.log("!!!!!!!!!!!!!!");
	        			console.log(data);
	        			console.log("!!!!!!!!!!!!!!");
	        			
	        			var bestIndex = sessionStorage.getItem("bestIndex");
						sessionStorage.setItem("bestData" , data.length);	
	        			
	        			/* Best 게시글 */
	        			if(data.length < 2)
	        			{
							var bestAdd ="";
				            for(var i = 0; i < data.length; i++) 
				            {
				                bestAdd += '<div class="board-recent">'
							    bestAdd += '<div class="content-recent">'
								bestAdd += '<a href="#" class="profile-board">'
								bestAdd += '<div class="profile-img">'
								bestAdd += '<img src="${pageContext.request.contextPath }/resources/img/mainPageImg/icon_profile.png">'
								bestAdd += '</div>'
								bestAdd += '<div class="profile-info">'
								bestAdd += '<span class="profile-name">'+data[i].user_ID+'</span> <span class="regist-time"></span>'
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
								bestAdd += '<a href="#" class="thumbnail-inner"> <img class="img-post" alt="postthumbnail" src="${pageContext.request.contextPath }/resources/img/detailPageImg/'+data[i].bno+'/'+data[i].imgBoardList[0].img+'" style= width="167; height=167;">'
								bestAdd += '</a> <a href="#" class="button-more-img"> <i class="sp_common icon_more"><span class="blind">글 썸네일 펼치기</span></i>'
								bestAdd += '</a>'
								bestAdd += '<div class="plus-thumbnail-list">'
								bestAdd += '<a href="#" class="list-inner">'
								
								if(data[i].imgBoardList.length > 1)
								{
									for(var j=1; j<4; j++ )
									{
										bestAdd += '<div class="plus-list">'
										bestAdd += '<img class="plus-img" alt="추가이미지" width="167" height="167" src="${pageContext.request.contextPath }/resources/img/detailPageImg/'+data[i].bno+'/'+data[i].imgBoardList[j].img+'">'
										bestAdd += '</div>'
										if(data[i].imgBoardList.length-1 == j) break;
									}
								}
								
								bestAdd += '</a>'
								bestAdd += '</div>'
								bestAdd += '</div>'
								bestAdd += '</div>'
							    bestAdd += '</div>'
						        bestAdd += '</div>'
				            }
				            $(".bestAdd").html(bestAdd);
	        			}else
	        			{
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
									bestAdd += '<span class="profile-name">'+data[i].user_ID+'</span> <span class="regist-time"></span>'
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
									bestAdd += '<a href="#" class="thumbnail-inner"> <img class="img-post" alt="postthumbnail" src="${pageContext.request.contextPath }/resources/img/detailPageImg/'+data[i].bno+'/'+data[i].imgBoardList[0].img+'" width="167" height="167">'
									bestAdd += '</a> <a href="#" class="button-more-img"> <i class="sp_common icon_more"><span class="blind">글 썸네일 펼치기</span></i>'
									bestAdd += '</a>'
									bestAdd += '<div class="plus-thumbnail-list">'
									bestAdd += '<a href="#" class="list-inner">'
									
									if(data[i].imgBoardList.length > 1)
									{
										for(var j=1; j<4; j++ )
										{
											bestAdd += '<div class="plus-list">'
											bestAdd += '<img class="plus-img" alt="추가이미지" width="167" height="167" src="${pageContext.request.contextPath }/resources/img/detailPageImg/'+data[i].bno+'/'+data[i].imgBoardList[j].img+'">'
											bestAdd += '</div>'
											if(data[i].imgBoardList.length-1 == j) break;
										}
									}
									
									bestAdd += '</a>'
									bestAdd += '</div>'
									bestAdd += '</div>'
									bestAdd += '</div>'
								    bestAdd += '</div>'
							        bestAdd += '</div>'
				            }
				
				            $(".bestAdd").html(bestAdd);
	        			}
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
            getNearBoard();
		})
		
		 

	
	</script>