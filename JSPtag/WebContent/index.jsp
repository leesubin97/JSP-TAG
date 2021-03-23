<%@page import="dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- forward 전진 include(불러오기) -->

<h3>index.jsp start</h3>

<jsp:include page="NewFile.jsp"/>


<h3>index.jsp end</h3>

<%-- <jsp:forward page="NewFile.jsp"></jsp:forward>
 --%>

<%-- <%

	MemberDto dto = new MemberDto();
	dto.setMessage("hello");
	String msg = dto.getMessage();
	
	request.setAttribute("mem", dto);
%>

${mem.message} --%>

<!-- 객체생성 위와 동일-->
<jsp:useBean id="dto" class = "dto.MemberDto"></jsp:useBean>
<!-- dto.setMessage("hello"); -->
<jsp:setProperty property="message" name="dto" value = "안녕하세요"/>

<jsp:getProperty property="message" name="dto"/><!-- 출력도된다 -->

MSG:${dto.message }<!-- setAttribute 할필요가 없다 -->

</body>
</html>