<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Page671 JSP에서 로그인한 사용자 정보 보여주기  : 아래 2줄 tablib 구문 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- all -->
	<h1>/sample/admin page : 로그인한 사용자들 중에서 관리자 권한(admin)을 가진 사용자만이 접근할 수 있는 URI</h1>

	<!-- Page672 JSP에서 로그인한 사용자 정보 보여주기  -->
	<!-- 스프링 시큐리티와 관련된 정보를 출력하거나 사용하려면 JSP 상단에 스프링 시큐리티 관련
	    태그 라이브러리 사용을 선언하고, sec authenticatio 태그와 principal이라는
	    이름의 속성을 사용합니다. -->
	<!-- sec authentication property principal 태그와 속성을 이용했을 때
	     UserDetailsService에서 반환된 객체를 활용하게 됩니다.
	     즉, CustomUserDetailsService를 이용한다면 loadUserByUsername에서
	     반환된 CustomUser 객체를 활용하게 됩니다. 그러면 principal이 CustomUser가
	     되므로, principal.member는 CustomUser 객체의 getMember를 호출하게 됩니다. -->
	<p>principal : <sec:authentication property="principal"/></p>
	<p>MemberVO : <sec:authentication property="principal.member"/></p>
	<p>사용자이름 : <sec:authentication property="principal.member.userName"/></p>
	<p>사용자아이디 : <sec:authentication property="principal.username"/></p>
	<p>사용자 권한 리스트  : <sec:authentication property="principal.member.authList"/></p>

	<!-- Page642 로그아웃 테스트를 위해 sample 폴더 안에 admin.jsp 페이지에 로그아웃으로
	         이동하는 링크를 추가해 줍니다.  -->
	<a href="/customLogout">Logout!!!</a>

</body>
</html>