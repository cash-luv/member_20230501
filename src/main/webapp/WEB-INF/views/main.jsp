<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-01
  Time: PM 1:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<section>
  <div class="container">
  <h2>회원 수정페이지</h2><br>
    <br>
  <form action="/passwordCh" method="post" onsubmit="return ValidationName()">
    <label for="memberPassword"><b>비밀번호 확인</b> </label>
    <input type="text" name="memberPassword" id="memberPassword" placeholder="패스워드를 입력해주세요"> <br>

    <input type="submit" value="확인">
    <input type="reset" value="취소" onclick="back()">
  </form>
  </div>
</section>
<%@include file="component/footer.jsp"%>
</body>
<script>
  const ValidationName = () => {
    const Password = document.getElementById("memberPassword");
    const exp1 = /^(?=.*[a-z])(?=.*\d)(?=.*[!#$%])[a-z\d!#$%]{8,16}$/;

    if (Password.value == "") {
      alert("비밀번호를 입력하세요")
      Password.focus();
      return false;
    } else if (!Password.value.match(exp1)) {
      alert("올바른 형식이 아닙니다")
      Password.focus();
      return false;
    } else {
      alert("로그인성공")
      return true;
    }
  }
  const back = () => {
    location.href = "/";

  }
</script>
</html>
