<!-- 어드민 아닌 일반유저의 경우
전체문의내역 탭 보여야할지? 안보여야할지? 정책필요 -->




<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

  <section>
        <div class="container-fluid" style="padding: 0; margin: 0;">
            <dic class="row">
                <div class="col-xs-12" style="padding: 0; margin: 0;">
                    <div class="titleBoxtitle">
                        <p>고객 센터</p>
                    </div>
                </div>
            </dic>
        </div>
        <div class="container">
            <div class="row">

                <div class="col-sm-12">
                    <section>

                        <div class="container-fluid">
                            <div class="row">
                                <!--lg에서 9그리드, xs에서 전체그리드-->
                                <div class="col-lg-9 col-xs-12 board-table">
                                    <!--1.검색부분을 폼으로 넘기는데 컴트롤러에서 필요한 값을 hidden으로 처리해서 넘겨줍니다-->
                                    <form action="faqList">
                                        <div class="search-wrap">
                                            <button type="submit" class="btn btn-info search-btn">검색</button>
                                            <input type="text" class="form-control search-input" name="searchName"
                                                value="${pageVO.cri.searchName }">
                                            <select class="form-control search-select" name="searchType">
                                                <!-- 키워드 타입 -->
                                                <option value="title" ${pageVO.cri.searchType eq 'title' ? 'selected'
                                                    : '' }>제목</option>
                                                <option value="content" ${pageVO.cri.searchType eq 'content'
                                                    ? 'selected' : '' }>내용
                                                </option>
                                                <option value="writer" ${pageVO.cri.searchType eq 'writer' ? 'selected'
                                                    : '' }>작성자
                                                </option>
                                                <option value="titcont" ${pageVO.cri.searchType eq 'titcont'
                                                    ? 'selected' : '' }>제목+내용
                                                </option>
                                            </select>
                                        </div>

                                        <input type="hidden" name="pageNum" value="1">
                                        <input type="hidden" name="amount" value="10">
                                    </form>
                                    <div class="faqTable">

                                        <ul class="nav nav-tabs tabsCenter">
                                            <li class="active"><a href="#home">FaQ</a></li>
                                            <li><a href="#menu1">내 문의 내역</a></li>
                                            <li><a href="#menu2">전체 문의 내역</a></li>
                                        </ul>

                                        <div class="tab-content">
                                            <div id="home" class="tab-pane fade in active">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>번호</th>
                                                            <th class="board-title">제목</th>
                                                            <th>작성자</th>
                                                            <th>등록일</th>
                                                            <th>수정일</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="vo" items="${list }">
                                                            <tr>
                                                                <td>${vo.bno }</td>
                                                                <td><a href="faqDetail?bno=${vo.bno }">${vo.title }</a></td>
                                                                <td>${vo.writer }</td>
                                                                <td>
                                                                    <fmt:formatDate value="${vo.regdate }"
                                                                        pattern="yyy-MM-dd HH:mm:ss" />
                                                                </td>
                                                                <td>
                                                                    <fmt:formatDate value="${vo.updatedate }"
                                                                        pattern="yyy-MM-dd HH:mm:ss" />
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>

                                                </table>
                                            </div>
                                            <div id="menu1" class="tab-pane fade">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>번호</th>
                                                            <th class="board-title">제목</th>
                                                            <th>작성자</th>
                                                            <th>등록일</th>
                                                            <th>수정일</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="vo" items="${list }">
                                                            <tr>
                                                                <td>${vo.bno }</td>
                                                                <td><a href="faqDetail?bno=${vo.bno }">${vo.title }</a>
                                                                </td>
                                                                <td>${vo.writer }</td>
                                                                <td>
                                                                    <fmt:formatDate value="${vo.regdate }"
                                                                        pattern="yyy-MM-dd HH:mm:ss" />
                                                                </td>
                                                                <td>
                                                                    <fmt:formatDate value="${vo.updatedate }"
                                                                        pattern="yyy-MM-dd HH:mm:ss" />
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>

                                                </table>
                                            </div>
                                            <div id="menu2" class="tab-pane fade">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>번호</th>
                                                            <th class="board-title">제목</th>
                                                            <th>작성자</th>
                                                            <th>등록일</th>
                                                            <th>수정일</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="vo" items="${list }">
                                                            <tr>
                                                                <td>${vo.bno }</td>
                                                                <td><a href="faqDetail?bno=${vo.bno}">${vo.title }</a>
                                                                </td>
                                                                <td>${vo.writer }</td>
                                                                <td>
                                                                    <%-- <fmt:formatDate value="${vo.regdate }"
                                                                        pattern="yyy-MM-dd HH:mm:ss" /> --%>
                                                                        ${vo.timetotext}
                                                                </td>
                                                                <td>
                                                                    <fmt:formatDate value="${vo.updatedate }"
                                                                        pattern="yyy-MM-dd HH:mm:ss" />
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <form action="faqList" name="pageForm">
                                        <div class="text-center">
                                            <hr>
                                            <ul class="pagination pagination-sm">
                                                <!--1. 페이지 네이션을 가져옴-->
                                                <!-- 2.이전페이지 활성화여부 -->
                                                <!-- 3. 다음버튼 활성황 여부 -->
                                                <!-- 
                                                        <c:if test="${pageVO.prev }">
                                                            <li><a href="faqList?pageNum=${pageVO.startPage-1} & amount=${pageVO.amount }">이전</a></li>
                                                        </c:if>
                                                            <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
                                                            <li class="${pageVO.pageNum eq num ? 'active' : '' }">
                                                               <a href="faqList?pageNum=${num } & amount=${pageVO.amount }">${num }</a
                                                               ></li>
                                                            </c:forEach>
                                                            
                                                         <c:if test="${pageVO.next }">  
                                                            <li><a href="faqList?pageNum=${pageVO.endPage + 1 } & amount=${pageVO.amount}">다음</a></li>
                                                         </c:if>
                                                         -->
                                                <c:if test="${pageVO.prev }">
                                                    <li><a href="#" data-pagenum="${pageVO.startPage -1 }">이전</a></li>
                                                </c:if>
                                                <c:forEach var="num" begin="${pageVO.startPage }"
                                                    end="${pageVO.endPage }">
                                                    <li class="${pageVO.pageNum eq num ? 'active' : '' }">
                                                        <a href="#" data-pagenum="${num }">${num }</a>
                                                    </li>
                                                </c:forEach>

                                                <c:if test="${pageVO.next }">
                                                    <li><a href="#" data-pagenum="${pageVO.endPage + 1 }">다음</a></li>
                                                </c:if>

                                            </ul>
                                            
 <%-- 세션 완성   후 구현
                                            <c:if test="${sessionScope.userVO != null}">
                                                <button type="button" class="btn btn-info"
                                                    onclick="location.href ='faqRegist' ">글쓰기</button>
                                            </c:if>
                                            
--%>
                                                  <button type="button" class="btn btn-info"
                                   					onclick="location.href ='faqRegist' ">글쓰기</button>               
                               
                                            
                                            
                                            
                                            
                                        </div>
                                        <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
                                        <input type="hidden" name="amount" value="${pageVO.cri.amount }">
                                        <input type="hidden" name="searchType" value="${pageVO.cri.searchType }">
                                        <input type="hidden" name="searchName" value="${pageVO.cri.searchName }">
                                    </form>

                                </div>

                            </div>
                        </div>

                    </section>
                </div>
            </div>
        </div>
    </section>




<script>

		//???
        $(document).ready(function () {
            $(".nav-tabs a").click(function () {
                $(this).tab('show');
            });
        });
        
        
        //날짜를 2019-02-11 이런거에서 당일치기글은 1분 1시간 전 이런식으로 바꾸기
        (function (x) { console.log(x*x); })(2);

        (function () { 
        	console.log(  ${vo.regdate }  ); 
        })();
        
        
        
        
        /* 
        if(insertRows < 3) {
		addRow += "<tr class='insert-row'>";
		addRow += "	<td class='food-No'>" + rowNum + "</td>";
		addRow += "	<td><input type='text' class='checkRow' id='foodName' name='foodName' value=''></td>";
         */
        
        
        
        
        
        
        
        
</script>