<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section>
  <div class="login-container">
    <div class="login-body">
      <div class="login-form">
        <form action="loginForm" method="post">
          <input type="text" name="user_ID" class="text-field" placeholder="아이디">
          <input type="password" name="user_PW" class="text-field" placeholder="비밀번호">
          <input type="submit" value="로그인" class="submit-btn">
          <input type="submit" value="카카오톡" class="submit-btn2">
        </form>
     
        <div class="links">
            <a href="#">회원가입</a>  
          <a href="#">비밀번호를 잊어버리셨나요?</a>
        </div>
      </div>
    </div>
  </div>
</section>