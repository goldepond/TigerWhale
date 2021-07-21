<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <section class="mypage">
        <div class="container">
            <div class="row">
                <div class="col-sm-12" style="float: none; margin:0 auto;">

                    <div id="mypage-body">
                        <div class="account-info-container">
                            <div class="mypage-container">
                                <h1 class="main">마이페이지</h1>
                                <a href="${pageContext.request.contextPath}/mypage/mypageModify" class="profile-container underline">
                                    <div class="thumb">
                                        <div class="thumb-image">
                                            <img src="${pageContext.request.contextPath}/resources/img/image/default-profile.svg" class="user-picture" alt="기본이미지">
                                        </div>
                                    </div>
                                    <div class="user-info">
                                        <div class="user-name">
                                            <span class="name">${usersVO.user_ID }</span>  고객님 
                                        </div>
                                        <div class="user-email">
                                            <span class="glyphicon glyphicon-envelope"> ${usersVO.userEmail1}<!--이메일 호출--></span>
                                        </div>
                                    </div>
                                    <div class="arrow">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                    </div>
                                </a>
                                
                                <ul class="account-info">
                                    <li class="item-container">
                                        <div class="item">
                                            <div class="item-title">유저 평점</div>
                                            <div class="item-info">수강생 평점</div>
                                            <div class="item-info">강사 평점</div>
                                        </div>
                                    </li>
                                    <li class="item-container">
                                        <div class="item">
                                            <div class="item-title">관심사</div>
                                            <div class="item-info">음악</div>
                                        </div>
                                        <div class="glyphicon glyphicon-chevron-right">
                                        </div>
                                    </li>
                                    <li class="item-container">
                                        <div class="item">
                                            <div class="item-title">판매자 카테고리</div>
                                            <div class="item-info">스포츠</div>
                                        </div>
                                        <div class="glyphicon glyphicon-chevron-right">
                                        </div>
                                    </li>
                                    <li class="item-container">
                                        <div class="item">
                                            <div class="item-title">거주 지역</div>
                                            <div class="item-info">${usersVO.userAddr1 }</div>
                                        </div>
                                        <div class="glyphicon glyphicon-chevron-right">
                                        </div>
                                    </li>
                
                                </ul>
                                <ul class="account-info">
                                    <li class="item-container">
                                        <div class="item">
                                            <div class="item-info">수강 내역</div>
                                        </div>
                                        <div class="glyphicon glyphicon-chevron-right">
                                        </div>
                                    </li>
                                    <li class="item-container">
                                        <div class="item">
                                            <div class="item-info">강의 내역</div>
                                        </div>
                                        <div class="glyphicon glyphicon-chevron-right">
                                        </div>
                                    </li>
                                </ul>
                                <ul class="account-info">
                                    <li class="item-container">
                                        <div class="item">
                                            <div class="item-title">환경설정</div>
                                        </div>
                                        <div class="glyphicon glyphicon-chevron-right">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
            
                    </div>
                </div>
            </div>
        </div>
    </section>
