<%@page import="dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 코어 태그 사용할때는  jstl 자르랑 standard자르 추가해야한다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	EL : value
	Core: 제어문 + EL 

-->
<%-- <%
	String data = "core 태그 입니다";
	request.setAttribute("_data", data);
	
%>

<%
	out.println(data);
%> --%>

<!-- 1. 첫번째 코어 코드 -->

<c:set var="_data" value = "core 태그 입니다 + el 입니다"/>
<h1><c:out value="${_data}"></c:out><!-- = out.println(data);--></h1>

<br><br>

<!-- if -->
<%
	request.setAttribute("count", "10");
	/* 코어태그를 사용하면 숫자로 자동으로 들어가진다 */
%>
<%

	String scount = (String)request.getAttribute("count");
	int count = Integer.parseInt(scount);
	if(count >= 10){
		%>
		<p>count:<%=count %></p>
		<%
	}
%>

<!-- 코어태그 사용  if -->
<c:if test="${count >= 10 }">
<p>core count:<c:out value="${count}"></c:out></p>
</c:if>

<br><br>


<!-- 코어태그 사용  if-->
<%
request.setAttribute("name", "주지훈");

%>
${name}
<%-- <c:if test="${name eq '주지훈'}"> --%>
<c:if test="${name == '주지훈'}">
	<p>이름은 주지훈이 맞습니다</p>
</c:if>


<!--   for-->
<%

	for(int i =0; i < 10 ; i++){
		%>
		<%=i %>	
		
		<%
	}
%>
<br><br>
<!--코어사용   for-->
<c:forEach begin = "0" end = "9" step = "1" varStatus="i">
	<c:out value="${i.index}"></c:out>
</c:forEach>

<br><br>
<%
	List<MemberDto> list = new ArrayList<>();
	
	MemberDto m = new MemberDto();
	m.setMessage("주지훈배우");
	list.add(m);
	
	request.setAttribute("_list", list);

%>

<c:forEach begin = "0" end="1" var = "mem" items="${_list }" varStatus="i">
<p>
index:<c:out value="${i.index}"/>
data:<c:out value="${mem.message}"/>
</p>

</c:forEach>

</body>
</html>