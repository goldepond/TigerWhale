<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <div class="whole-searchpage">
        <div class="inner-searchpage">
            <div class="main-searchpage">
                <nav class="side-title">
                    <div class="title-head">
                        <h1 class="title-head-content">${bigTitle}</h1>
                    </div>
                    <div class="title-content">
                        <div class="title-content1">
                            <!-- big카테고리에 속하는 middle카테고리 리스트 -->
                            <c:forEach var="vo" items="${middleList}">
                        	<div class="content-list">
                        		<a href="searchPage?searchType=middleCategory&typeValue=${vo.middleCategory}" class="list-link">${vo.middleCategory}</a>
                                <button class="side-list-btn">
                                    <span role="img" rotate="0" class="ebpz7lm2">
                                        <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n">
                                            <path xmlns="http://www.w3.org/2000/svg" d="M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z"></path>
                                        </svg>
                                    </span>
                                </button>
                        	</div>
                        	<div class="1n9null ebpz7lm1">
                                <!-- middle카테고리에 속하는 small카테고리 리스트 -->
                                <c:forEach var="smallVO" items="${smallList}">
                                    <c:set var="mid" value="${vo.middleCategory}"/>
                                    <c:set var="small" value="${smallVO.middleCategory}"/>
                                    <c:if test = "${ mid eq small }">
                                        <a href="searchPage?searchType=c_code&typeValue=${smallVO.c_code}" class="ebpz7lm0 css-1rtqxy7 e1lsgt8r0">${smallVO.smallCategory}</a>
                                    </c:if>
                                </c:forEach>
                        	</div>
                        	</c:forEach>
                        </div>
                    </div>
                </nav>

                <div class="main-board-searchpage">
                    <!-- search path -->
                    <section class="css-1wyl56j">
                        <div class="css-1hdh32i e1rp7ga01"></div>
                        <a href="/" class="css-mz86x3 e1rp7ga00">${bigTitle}</a>
                        <c:choose>
                            <c:when test = "${cri.searchType eq 'middleCategory'}">
                                <div class="css-1hdh32i e1rp7ga01">&gt;</div>
                                <a href="/category/6" class="css-mz86x3 e1rp7ga00">${cri.typeValue}</a>
                            </c:when>
                            <c:when test = "${cri.searchType eq 'c_code'}">
                                <div class="css-1hdh32i e1rp7ga01">&gt;</div>
                                <a href="/category/6" class="css-mz86x3 e1rp7ga00">${path.middleCategory}</a>
                            </c:when>
                        </c:choose>
                        
                        <c:if test = "${cri.searchType eq 'c_code'}">
                            <div class="css-1hdh32i e1rp7ga01">&gt;</div>
                            <a href="/category/603" class="css-mz86x3 e1rp7ga00">${path.smallCategory}</a>
                        </c:if>
                    </section>
                    <!-- 팝니다 삽니다 -->
                    <div class="css-pxo25g">
                        <div class="css-zjik7">
                            <div class="css-zjik7 e1t4yfrj2">
                                
                                <div class="css-0 e1t4yfrj1">
                                    <label color="#ffd400" class="css-2k98vs">
                                        <span class="css-19ldx4e">
                                            <input type="checkbox" class="css-r5ggoa elgfge2" style="margin-top: 0px;">
                                            <span class="css-1wreaqz elgfge1">삽니다</span>
                                        </span>
                                    </label>
                                </div>
                                <div class="css-0 e1t4yfrj1">
                                    <label color="#ffd400" class="css-2k98vs elgfge0">
                                        <span class="css-19ldx4e elgfge3">
                                            <input type="checkbox" class="css-r5ggoa elgfge2" style="margin-top: 0px;">
                                            <span class="css-1wreaqz elgfge1">팝니다</span>
                                        </span>
                                    </label>
                                </div>
                                
                            </div>
                        </div>
                        
                    </div>
                    <!-- 검색조건에 맞는 게시물 목록 -->
                    <div class="css-1thgtsb elz42uf6">
                        <div class="container">
							<div class="row">
								<c:if test = "${thumbnailList eq null }">
									<div class="col-lg-8 nullp">
										<p>아직 게시글이 없습니다.</p>
									</div>
								</c:if>
								<c:if test = "${thumbnailList ne null}">
	                            <c:forEach var = "thumbnail" items="${thumbnailList}">
	                                <article class="col-lg-3 css-1c4kgrp elz42uf4">
	                                    <div data-testid="GigCard" class="css-1d3w5wq ezeyqpv18">
	                                        <a href="/gig/79053" class="css-1mr8hr4 ezeyqpv17">
	                                            <div class="css-7ie1j7 ezeyqpv16">
	                                                <div class="css-1tgcat7 exlplif3">
	                                                    <div class="css-1lfj0cb exlplif2">
	                                                        <div tabindex="0" data-testid="carousel-item-0" class="css-1ohlt9r exlplif0">
	                                                            <img title="${thumbnail.title}"
	                                                                alt="${thumbnail.title}"
	                                                                src="resources/img/userIMG/${thumbnail.img}.jpg" loading="lazy"
	                                                                class="css-d1mg3o ejobblq0">
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="css-gxq4i8 ezeyqpv13">
	                                                <h3 data-testid="title" class="css-abfrks ezeyqpv9">${thumbnail.title}</h3>
	                                                <div class="css-1eoy87d ezeyqpv6">
	                                                    <div class="css-s5xdrg ezeyqpv5">
	                                                        <div data-testid="price" class="css-1848xfl ezeyqpv4">
	                                                            <span>${thumbnail.price}</span><strong>원~</strong></div>
	                                                    </div>
	                                                </div>
	                                                <div class="css-mkpab3 ezeyqpv2"><span role="img" rotate="0" data-testid="rating-icon"
	                                                        class="ezeyqpv3 css-1mrr0sj e181xm9y1"><svg width="18" height="18" viewBox="0 0 24 24"
	                                                            fill="currentColor" aria-hidden="true" focusable="false"
	                                                            preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
	                                                            <path
	                                                                d="M14.43,10l-1.47-4.84c-0.29-0.95-1.63-0.95-1.91,0L9.57,10H5.12c-0.97,0-1.37,1.25-0.58,1.81l3.64,2.6l-1.43,4.61 c-0.29,0.93,0.79,1.68,1.56,1.09L12,17.31l3.69,2.81c0.77,0.59,1.85-0.16,1.56-1.09l-1.43-4.61l3.64-2.6 c0.79-0.57,0.39-1.81-0.58-1.81H14.43z">
	                                                            </path>
	                                                        </svg></span><span class="css-p9bq5v ezeyqpv0"></span>
	                                                    <div class="css-0 ezeyqpv1">${thumbnail.recnum}</div>
	                                                </div>
	                                            </div>
	                                        </a></div>
	                                </article>
	                            </c:forEach>
                            	</c:if>
                            </div>
                        </div>

                        <!-- íì´ì§ë¤ì´ì -->
                        <div class="css-1wnowod elz42uf0">
                            <ul class="css-awz0iq ekfh2sc3">
                                <li class="css-1lv1yo7 ekfh2sc2">
                                    <button color="default" data-testid="pager-left-button" class="ekfh2sc1 css-rmf2c eklkj754" disabled="">
                                        <span class="css-1oteowz eklkj753">
                                            <span role="img" rotate="0" class="css-aah4od e181xm9y1">
                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                                    <path xmlns="http://www.w3.org/2000/svg" d="M15.41 16.59L10.83 12l4.58-4.59L14 6l-6 6 6 6 1.41-1.41z"></path>
                                                </svg>
                                            </span>
                                        </span>
                                    </button>
                                </li>
                                <li class="css-1lv1yo7 ekfh2sc2">
                                    <button color="default" data-testid="pager-active-button" class="ekfh2sc1 css-liu8ox eklkj754">
                                        <span class="css-1oteowz eklkj753">1</span>
                                    </button>
                                </li>
                                <li class="css-1lv1yo7 ekfh2sc2">
                                    <button color="default" data-testid="pager-active-button" class="ekfh2sc1 css-liu8ox eklkj754">
                                        <span class="css-1oteowz eklkj753">2</span>
                                    </button>
                                </li>
                                <li class="css-1lv1yo7 ekfh2sc2">
                                    <button color="default" data-testid="pager-active-button" class="ekfh2sc1 css-liu8ox eklkj754">
                                        <span class="css-1oteowz eklkj753">3</span>
                                    </button>
                                </li>
                                <li class="css-1lv1yo7 ekfh2sc2">
                                    <button color="default" data-testid="pager-active-button" class="ekfh2sc1 css-liu8ox eklkj754">
                                        <span class="css-1oteowz eklkj753">4</span>
                                    </button>
                                </li>
                                <li class="css-1lv1yo7 ekfh2sc2">
                                    <button color="default" data-testid="pager-active-button" class="ekfh2sc1 css-liu8ox eklkj754">
                                        <span class="css-1oteowz eklkj753">5</span>
                                    </button>
                                </li>
                                
                                <li class="css-1lv1yo7 ekfh2sc2">
                                    <button color="default" data-testid="pager-right-button" class="ekfh2sc1 css-rmf2c eklkj754">
                                        <span class="css-1oteowz eklkj753">
                                            <span role="img" rotate="0" class="css-aah4od e181xm9y1">
                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" focusable="false" preserveAspectRatio="xMidYMid meet" class="css-7kp13n e181xm9y0">
                                                    <path xmlns="http://www.w3.org/2000/svg" d="M8.59 16.59L13.17 12 8.59 7.41 10 6l6 6-6 6-1.41-1.41z"></path>
                                                </svg>
                                            </span>
                                        </span>
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(".content-list").click(function (node) {

            var hidden = event.currentTarget.nextElementSibling;

            if ($(hidden).hasClass("content-list")) return;

            if ($(hidden).hasClass("css-1n9null")) {
                $(hidden).removeClass("css-1n9null");
                $(hidden).addClass("css-1n9hull");
            } else {
                $(hidden).removeClass("css-1n9hull");
                $(hidden).addClass("css-1n9null");
            }
        });



    </script>
