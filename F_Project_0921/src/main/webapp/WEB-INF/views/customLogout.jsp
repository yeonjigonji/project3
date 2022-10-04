<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<title>customLogout jsp 소스 코딩</title>

</head>
<body>


  
  <h1>Logout Page</h1>
  
  <form method='post' action="/customLogout">
  	<!-- Page633 아래 EL의 값은 실제 브라우저에서는 '_csrf'라는 이름으로 처리됩니다.-->
    <input type="hidden" class="yg" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
    <button>로그아웃!!!</button>
  </form>

</body>



</html>
