<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <section>

        <div class="container">
            <div class="row">
                <div class="col-sm-12" style="float: none; margin:0 auto; padding: 0; background-color: aquamarine;">
                    <div class="header">
                        <div class="header-div">
                            <a href="${pageContext.request.contextPath}">
                                <img src="${pageContext.request.contextPath}/resources/img/mainPageImg/icon_profile.png">
                            </a>
                        </div>
                        <div class="search-tag header-div">
                            <form>
                                <input type="text"><a href="#"><i class="fas fa-search fa-2x"></i></a>
                            </form>
                        </div>
                        <div class="icon-set header-div">
                            <span><a href="${pageContext.request.contextPath}/mypage/mypage"><i class="far fa-user fa-3x"></i></a></span>
                            <span><a href="#"><i class="far fa-clone fa-3x"></i></a></span>
                            <span><a href="#"><i class="fas fa-shopping-basket fa-3x"></i></a></span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 header2">
                    <div class="category-page">
                        <div class="visible">
                            <button type="button" class="open-btn"
                                style="border-radius: 0; border: 1px solid rgb(135, 177, 232);">
                                <span class="btn-icon glyphicon glyphicon-tower"></span>
                                <span class="btn-icon"><i class="fas fa-bars"></i></span>
                                <span class="btn-title">전체카테고리</span>
                            </button>
                        </div>
                        <div class="click-visible">
                            <div class="category-block">
                                <ul class="category-list" id="cate-con">
                                    <!-- <li class="list-item">
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
                                                    
                                                </div>
                                                <a href="#" class="link-2th-item">
                                                    백엔드
                                                    <span class="glyphicon glyphicon-menu-right"></span>
                                                </a>
                                                <div class="box-3rd-item">
                                                    <a href="#" class="link-3rd-item">서버구현</a>
                                                    
                                                </div>
                                            </div>
                                        </li> -->
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="regist">
                        <span><a href="${pageContext.request.contextPath }/users/userLogin">로그인</a></span>
                        <a href="${pageContext.request.contextPath}/users/userJoin">회원가입</a>
                    </div>
                </div>
            </div>
        </div>

        <script>

            $(document).ready(function () {


                
                
                /* 전체카테고리 펼치기 */
                $('.open-btn').click(function () {
                    console.log(event.currentTarget.style);
                    if ($('.click-visible').css("display") == "none") {
                        $('.click-visible').css("display", "block");
                    } else {
                        $('.click-visible').css("display", "none");
                    }
                });
                
                getBig(); //대분류 조회

                /* 중분류 펼치기 */
                $('#cate-con').on("click", "span", function () {

                    event.preventDefault();

                    if ($(event.target).hasClass("mid-open")) {
                        if($('.middle-con').val() != null) {
                            $('.middle-con').addClass("box-2th-item");
                        }
                        $('.box-2th-item').removeClass("middle-con");
                        $(event.target).closest('a').next().addClass("middle-con");
                        var bigCategory = $(event.target).closest('a').text();

                        getMid(bigCategory);

                        $('.box-2th-item').css("display", "none");
                        $('.link-2th-item').css("display", "none");
                        $('.box-3rd-item').css("display", "none");
                        $('.link-3rd-item').css("display", "none");
                        $('.middle-con').css("display", "block");

                    } else if ($(event.target).hasClass("sm-open")) {
                        if($('.small-con').val() != null) {
                            $('.small-con').addClass("box-3rd-item");
                        }
                        $('.box-3rd-item').removeClass("small-con");
                        $(event.target).closest('a').next().addClass("small-con");
                        var middleCategory = $(event.target).closest('a').text();

                        getSmall(middleCategory);

                        
                    } // middle -> small


                });



                
                
                
                
            });
            function getBig() {

                $.getJSON("header/getHead/big", function (data) {


                    var liStr = '';
                    for (var i = 0; i < data.length; i++) {
                        liStr += "<li class='list-item'>";
                        liStr += "<a href='searchPage?searchType=bigCategory&typeValue=" + data[i].bigCategory +"' class='link-1th-item'>" + data[i].bigCategory;
                        liStr += "<span class='glyphicon glyphicon-menu-right mid-open''></span>";
                        liStr += "</a>";
                        liStr += "<div class='box-2th-item' style='display:block' id='middle-con" + i + "'>";
                        liStr += "</div>";
                        liStr += "</li>";
                    }

                    $("#cate-con").html(liStr);


                });

            } // end getBig
            function getMid(bigCategory) {
                $.getJSON("header/getHead/mid/" + bigCategory, function (data) {
                    console.log(bigCategory);
                    var midStr = '';
                    for (var i = 0; i < data.length; i++) {
                        midStr += "<a href='searchPage?searchType=middleCategory&typeValue=" + data[i].middleCategory +"' class='link-2th-item'>";
                        midStr += data[i].middleCategory;
                        midStr += "<span class='glyphicon glyphicon-menu-right sm-open'></span>";
                        midStr += "</a>";
                        midStr += "<div class='box-3rd-item' id='small-con" + i + "'>";
                        midStr += "</div>";
                    }
                    console.log(midStr);


                    $('.middle-con').html(midStr);

                });
            }
            function getSmall(middleCategory) {
                $.getJSON("header/getHead/sm/" + middleCategory, function (data) {
                    console.log(middleCategory);
                    var smStr = '';
                    for (var i = 0; i < data.length; i++) {
                        smStr += "<a href='searchPage?searchType=bigCategory&typeValue=" + data[i].smallCategory +"' class='link-3rd-item'>";
                        smStr += data[i].smallCategory;
                        smStr += "</a>";
                    }
                    console.log(smStr);


                    $('.small-con').html(smStr);

                });
            }




        </script>
    </section>