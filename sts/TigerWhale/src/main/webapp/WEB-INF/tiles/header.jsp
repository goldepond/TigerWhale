<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <section>

        <div class="container">
            <div class="row">
                <div class="col-sm-12" style="float: none; margin:0 auto; padding: 0; background-color: aquamarine;">
                    <div class="header">
                        <div class="header-div">
                            <img src="${pageContext.request.contextPath}/resources/img/mainPageImg/icon_profile.png">
                        </div>
                        <div class="search-tag header-div">
                            <form>
                                <input type="text"><a href="#"><i class="fas fa-search fa-2x"></i></a>
                            </form>
                        </div>
                        <div class="icon-set header-div">
                            <span><a href="#"><i class="far fa-user fa-3x"></i></a></span>
                            <span><a href="#"><i class="far fa-clone fa-3x"></i></a></span>
                            <span><a href="#"><i class="fas fa-shopping-basket fa-3x"></i></a></span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 header2">
                        <!-- <div class="category">
                            <i class="fas fa-bars"></i>  
                            <span>전체 카테고리</span>
                        </div> -->
                        <div class="category-page">
                            <div class="visible">
                                <button type="button" class="open-btn" style="border-radius: 0; border: 1px solid rgb(135, 177, 232);">
                                    <span class="btn-icon glyphicon glyphicon-tower"></span>
                                    <span class="btn-icon"><i class="fas fa-bars"></i></span>
                                    <span class="btn-title">전체카테고리</span>
                                </button>
                            </div>
                            <div class="click-visible">
                                <div class="category-block">
                                    <ul class="category-list">
                                        <li class="list-item">
                                            <a href="#" class="link-1th-item">
                                                IT·프로그래밍
                                                <span class="glyphicon glyphicon-menu-right"></span>
                                            </a>
                                            <div class="box-2th-item">
                                                <a href="#" class="link-2th-item">
                                                    프론트엔드
                                                    <span class="glyphicon glyphicon-menu-right"></span>
                                                </a>
                                                <div class="box-3rd-item">
                                                    <a href="#" class="link-3rd-item">웹사이트 제작</a>
                                                    <a href="#" class="link-3rd-item">웹사이트 디자인</a>
                                                    <a href="#" class="link-3rd-item">웹사이트 디자인</a>
                                                    <a href="#" class="link-3rd-item">웹사이트 디자인</a>
                                                    <a href="#" class="link-3rd-item">웹사이트 디자인</a>
                                                    <a href="#" class="link-3rd-item">웹사이트 디자인</a>
                                                    <a href="#" class="link-3rd-item">웹사이트 디자인</a>
                                                    <a href="#" class="link-3rd-item">웹사이트 디자인</a>
                                                    <a href="#" class="link-3rd-item">웹사이트 디자인</a>
                                                    <a href="#" class="link-3rd-item">웹사이트 디자인</a>
                                                </div>
                                                <a href="#" class="link-2th-item">
                                                    백엔드
                                                    <span class="glyphicon glyphicon-menu-right"></span>
                                                </a>
                                                <div class="box-3rd-item">
                                                    <a href="#" class="link-3rd-item">서버구현</a>
                                                    <a href="#" class="link-3rd-item">리눅스마스터</a>
                                                    <a href="#" class="link-3rd-item">리눅스마스터</a>
                                                    <a href="#" class="link-3rd-item">서버구현</a>
                                                    <a href="#" class="link-3rd-item">리눅스마스터</a>
                                                    <a href="#" class="link-3rd-item">서버구현</a>
                                                    <a href="#" class="link-3rd-item">리눅스마스터</a>
                                                    <a href="#" class="link-3rd-item">서버구현</a>
                                                    <a href="#" class="link-3rd-item">리눅스마스터</a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-item">
                                            <a href="#" class="link-1th-item">
                                                헬스·스포츠
                                                <span class="glyphicon glyphicon-menu-right"></span>
                                            </a>
                                            <div class="box-2th-item">
                                                <a href="#" class="link-2th-item">
                                                    PT
                                                    <span class="glyphicon glyphicon-menu-right"></span>
                                                </a>
                                                <div class="box-3rd-item">
                                                    <a href="#" class="link-3rd-item">웨이트</a>
                                                    <a href="#" class="link-3rd-item">필라테스</a>
                                                    <a href="#" class="link-3rd-item">플라잉요가</a>
                                                    <a href="#" class="link-3rd-item">요가</a>
                                                    <a href="#" class="link-3rd-item">폴댄스</a>
                                                    <a href="#" class="link-3rd-item">크로스핏</a>
                                                </div>
                                                <a href="#" class="link-2th-item">
                                                    무술
                                                    <span class="glyphicon glyphicon-menu-right"></span>
                                                </a>
                                                <div class="box-3rd-item">
                                                    <a href="#" class="link-3rd-item">주짓수</a>
                                                    <a href="#" class="link-3rd-item">킥복싱</a>
                                                    <a href="#" class="link-3rd-item">복싱</a>
                                                    <a href="#" class="link-3rd-item">검도</a>
                                                    <a href="#" class="link-3rd-item">태권도</a>
                                                    <a href="#" class="link-3rd-item">유도</a>
                                                    <a href="#" class="link-3rd-item">합기도</a>
                                                    <a href="#" class="link-3rd-item">펜싱</a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-item">
                                            <a href="#" class="link-1th-item">
                                                음악·미술
                                                <span class="glyphicon glyphicon-menu-right"></span>
                                            </a>
                                            <div class="box-2th-item">
                                                <a href="#" class="link-2th-item">
                                                    음악
                                                    <span class="glyphicon glyphicon-menu-right"></span>
                                                </a>
                                                <div class="box-3rd-item">
                                                    <a href="#" class="link-3rd-item">기타</a>
                                                    <a href="#" class="link-3rd-item">피아노</a>
                                                    <a href="#" class="link-3rd-item">베이스</a>
                                                    <a href="#" class="link-3rd-item">보컬</a>
                                                    <a href="#" class="link-3rd-item">탬버린</a>
                                                    <a href="#" class="link-3rd-item">캐스터네츠</a>
                                                </div>
                                                <a href="#" class="link-2th-item">
                                                    미술
                                                    <span class="glyphicon glyphicon-menu-right"></span>
                                                </a>
                                                <div class="box-3rd-item">
                                                    <a href="#" class="link-3rd-item">소묘</a>
                                                    <a href="#" class="link-3rd-item">데생</a>
                                                    <a href="#" class="link-3rd-item">회화</a>
                                                    <a href="#" class="link-3rd-item">소조</a>
                                                    <a href="#" class="link-3rd-item">조각</a>
                                                    <a href="#" class="link-3rd-item">가죽</a>
                                                </div>
                                                <a href="#" class="link-2th-item">
                                                    음악
                                                    <span class="glyphicon glyphicon-menu-right"></span>
                                                </a>
                                                <div class="box-3rd-item">
                                                    <a href="#" class="link-3rd-item">기타</a>
                                                    <a href="#" class="link-3rd-item">피아노</a>
                                                    <a href="#" class="link-3rd-item">베이스</a>
                                                    <a href="#" class="link-3rd-item">보컬</a>
                                                    <a href="#" class="link-3rd-item">탬버린</a>
                                                    <a href="#" class="link-3rd-item">캐스터네츠</a>
                                                </div>
                                                <a href="#" class="link-2th-item">
                                                    미술
                                                    <span class="glyphicon glyphicon-menu-right"></span>
                                                </a>
                                                <div class="box-3rd-item">
                                                    <a href="#" class="link-3rd-item">소묘</a>
                                                    <a href="#" class="link-3rd-item">데생</a>
                                                    <a href="#" class="link-3rd-item">회화</a>
                                                    <a href="#" class="link-3rd-item">소조</a>
                                                    <a href="#" class="link-3rd-item">조각</a>
                                                    <a href="#" class="link-3rd-item">가죽</a>
                                                </div>
                                            </div>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="regist">
                            <span><a href="${pageContext.request.contextPath }">로그인</a></span>
                            <a href="#">회원가입</a>
                        </div>
                </div>
            </div>
        </div>

        <script>
            /* 전체카테고리 펼치기 */
            $('.open-btn').click(function () {
                console.log(event.currentTarget.style);
                if($('.click-visible').css("display") == "none") {
                    $('.click-visible').css("display", "block");
                } else {
                    $('.click-visible').css("display", "none");
                }
            });
    
            /* 중분류 펼치기 */
            $('.link-1th-item > span').click(function() {
                $('.box-2th-item').css("display", "none");
                $('.link-2th-item').css("display", "none");
                $('.box-3rd-item').css("display", "none");
                $('.link-3rd-item').css("display", "none");
                $(this).closest('a').next().css("display", "block");
                for(var i = 0; i < $(this).closest('a').next().children().length; i++) {
                    if($(this).closest('a').next().children().eq(i).prop('tagName') == 'A') {
                        if($(this).closest('a').next().children().eq(i).css("display") == "none") {
                            $(this).closest('a').next().children().eq(i).css("display", "block");
                        } else {
                            $(this).closest('a').next().children().eq(i).css("display", "none");
                        }
                    }
                }
            });
            /* 소분류ㅠ */
            $('.link-2th-item > span').click(function() {
                $('.box-3rd-item').css("display", "none");
                $('.link-3rd-item').css("display", "none");
                $(this).closest('a').next().css("display", "block");
                for(var i = 0; i < $(this).closest('a').next().children().length; i++) {
                    if($(this).closest('a').next().children().eq(i).prop('tagName') == 'A') {
                        if($(this).closest('a').next().children().eq(i).css("display") == "none") {
                            $(this).closest('a').next().children().eq(i).css("display", "block");
                        } else {
                            $(this).closest('a').next().children().eq(i).css("display", "none");
                        }
                    }
                }
            });
    
        </script>
    </section>
