<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

<!-- jsp: html, javascript, css, java





-- -->
<%-- 

 <%! 선언부%>
 <% 코드부%>
 <%= 값%>
  :front end에서 java를 사용하지 않기 위함
  
  Expression language
  
  EL tag -> value
  Coretag  -> 제어문, jar를 추가
  	JSTL java server page standard tag language
  	g
  
  형식
  ${값, 연산식}

--%>
<%
 String str = "hello";
request.setAttribute("_str",str);
%>

<%
 String s = (String)request.getAttribute("_str");
%>

<%
out.println("s = " + s );
%>
<br><br>

s=<%=s %>
<br><br>
<!-- EL 태그 -->
s = ${_str}

<!-- 달러 안에 자바형 문자는 넣지 않는다
	객체가 아닌  -->

<br><br>

<%='값' %>
<br><br>
${'값' }

<br>
${2+3} <!-- 5 -->
<br>
${3>2?100:200}


<%

 request.setAttribute("data", "안녕하세요");
%>
<br>
${data}
<br><br>

object 가 할당되어있는지?

<%

Object obj = new String("world");
if(obj != null){
	
}
	//obj = null;
	request.setAttribute("_obj", obj);
%>
<br><br>
obj = ${empty _obj}
<!-- 데이터가 비어있는가? 채워져있스면 false -->

<br><br>
obj = ${not empty _obj}


<!-- 판별식 (true/ false), 연산식 (value) -->
1 < 9 : ${1 < 9}
<br>
1 + 3 : ${1 + 3}

<%

Integer a,b;
a = 10;
b = 3;

boolean c;
c = false;

request.setAttribute("a", a);
request.setAttribute("b", b);
request.setAttribute("c", c);

%>
<br>
a:${a }
<br>
b:${b }
<br>
c:${c }
<br>
a+b:${a+b}<!-- 문자열로 받아와도 연산식이 가능하다 -->
<br>
a < b:${a<b}
<br>
c:${!c}

<br><br>

<%
MemberDto dto = new MemberDto();
dto.setMessage("Hello EL");
request.setAttribute("_dto", dto);

%>
Message:<%=dto.getMessage() %>
<br><br>
Message:${_dto.message }
<br><br>
<%
String arr[] = {"hello", "world"};

request.setAttribute("_arr", arr);
%>

<%=arr[0]%><!--hello-->
<br><br>
${_arr[0] }<!--hello-->

<%

	List<String> list = new ArrayList<>();
	list.add("world");
	list.add("hello");
	
	request.setAttribute("_list", list);
%>
<%=list.get(0) %>
${_list[0] }<!--hello-->
	



<% 
/* 예제 */
List<MemberDto> mylist = new ArrayList<>();
	mylist.add(dto);
	
 	request.setAttribute("_mylist", mylist );

%>

${_mylist[0].message}




</body>
</html>