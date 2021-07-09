<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
<section>
            <div class="container CCC">
                <!--container => 중앙위치 /      container-fluid -->
                <div class="row">
                    <div class="col-sm-12" style="float: none; margin:0 auto;">
                        <div class="GigDetailContainer">
                            <div class="RightModules" style="width: 100%;">
                                <div class="upBox">
                                    <div class="GigMainGallery">
                                    </div>
                                    <!------------------------------------->

                                    <div class="GigTitle">
                                        
                                        <h1>박인욱선생님의 믿고듣는 HTML 과외 EZ반</h1>
                                        
                                        <div class="gig-detail-price">
                                            <h3>
                                                "90,000원"
                                                <span>~</span>
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
                                            </ul>

                                            <div class="tab-content">
                                                <div id="home" class="tab-pane fade in active">
                                                    <div class="package-header">
                                                        <span class="package-price">50,000원</span>
                                                        <span class="package-type">Standard</span>
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
                                                            <div class="mapbox">

                                                                <div id="map" class="mapinmap" style="width: 30%;">
                                                                </div>

                                                            </div>
                                                            <div class="address">
                                                                <span> - 만남장소</span>
                                                                <p>경기도 성남시 분당구 중앙공원로 54</p>
                                                            </div>
                                                        </div>
                                                        <div class="user_info">
                                                            
                                                            <div class="form-group">
                                                                <label>이름</label>
                                                                <input class="form-control" name='bno' value="${vo.bno }" readonly>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label>금액</label>
                                                                <input class="form-control" name='bno' value="${vo.bno }" readonly>
                                                            </div>
                                                            <div class="form-group" style="width: 40%; float: right;">
                                                                <label>전화번호</label>
                                                                <input class="form-control" name='bno' value="${vo.bno }" >
                                                            </div>

                                                            <div class="form-group" style="width: 40%;">
                                                                <label>이메일</label>
                                                                <input class="form-control" name='bno' value="${vo.bno }" >
                                                            </div>

                                                            <div class="form-group">
                                                                <label>신청자 동의</label>
                                                                <div class="edit_wrap agreement">
                                                                    <div class="all_check_area">
                                                                        <input type="checkbox" id="all" class="all_check">
                                                                        <label for="all">신청자 동의</label>
                                                                    </div>
                                                                    <div class="edit_check">
                                                                        <input type="checkbox" id="chk11" class="all_check">
                                                                        <label for="all">(필수) 개인정보 제3자 제공 동의</label>
                                                                        <a href="##">내용보기</a>
                                                                    </div>
                                                                </div>
                                                              </div>


                                                        </div>
                                                        <div class="package-direct-order">
                                                            <button type="button" class="btn">
                                                              <span>구매하기</span>
                                                            </button>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div id="menu1" class="tab-pane fade">

                                                </div>
                                                <div id="menu2" class="tab-pane fade">

                                                </div>
                                            </div>
                                            <!-- //////////////////////////////////////////////////////// -->

                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>

        </section>

        <script type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c9c2c80f44b7412a52bfb0036f525c9"></script>
        <script>
            var container = document.getElementById('map');
            var options = {
                center: new kakao.maps.LatLng(33.450701, 126.570667),
                level: 3
            };

            var map = new kakao.maps.Map(container, options);
        </script>
    </body>

</html>
