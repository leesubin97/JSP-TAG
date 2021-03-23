# JSP-TAG
coretag, ELtag, JSPtag
## JSP tag
** 표현 언어(EL:Expression Language) **
- 데이터를 웹 페이지에 표시하는데 사용하는 태그
- JSP 출력에 대한 부분을 쉽게 하기 위해 개발한 태그
- 등장배경 : 자바코드로 내장 객체(request, session 등)에 저장된 속성 값에 접근하면 코드가 길어지고 지저분해짐
ex) ${ expr }

* 요청 파마리터 처리
request.getParamter()--->param 객체
- param : request.getParameter()와 동일한 역할로, 파라미터 값을 알려준다
- paramValues : request.getParamterValues()와 동일한 역할로, 동일한 이름으로 전달되는 파라미터 값들(라디오버튼, 체크박스 등)을 배열형태로 얻어온다.

ex)
request.getParameter("id") ---> ${param.id}
request.getParameter("pw") ---> ${param.pw}


* 내장객체 접근
- pageScope : 내장객체 pageContext
- requestScope : 내장객체 request
- sessionScope : 내장객체 session
- applicationScope : 내장객체 application




** JSTL (JSP Standard Tag Library) **

- JSP 표준 태크 라이브러리
- 일관성 없던 커스텀 태그(JSP를 작성할 때 자주 사용되는 자바 코드를 웹에서 사용할 수 있는 태크 형태로 만드는 기술)들을 표준화 한 것


* 태그 라이브러리 사용하기
- JSTL 제공 기능 중 core를 사용하기 위한 taglib
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
- uri : 사용할 태그 라이브러리 식별자
- prefix : 태그에서 사용할 접두어


* JSTL core 태그

태그	설명	기본형식
<c:set>	변수에 값을 설정	
<c:set var="변수이름" value="저장할 값" [scope="{page|request|session|application}]>

*scope 속성 기본값 : page

<c:remove>	변수에 설정된 값을 제거	<c:remove var="변수 이름" [scope="{page|request|session|application}]>
<c:if>	조건에 따라 처리를 달리 할 때 사용	
<c:if test="조건식>

   조건이 참일 경우 실행할 문장

</c:if>

<c:choose>	여러 조건에 따라 처리를 달리 할 때 사용	
<c:choose>

 <c:when test="조건1"> 실행 값</c:when>

 <c:when test="조건2"> 실행 값</c:when>

 <c:otherwise> 실행 값</c:when>

</c:choose>

<c:forEach>	
구분자로 구분된 각각의 토큰을 처리할 때 사용

집합체에 저장되어 있는 값들을 순차적으로 처리할 떄 사용할 수 있는 태그

<c:forEach [var="변수 이름"] items="배열과 같은 집합체" [varStatus="반복상태정보를 위한 변수"]>

 실행 값

</c:forEach>

 

* varStatus 속성 : 반복 상태에 관련된 정보를 알려줌

- index : 현재 반복중인 항목의 index 알려줌

- count : 현재 몇 번째를 반복 중인지 알려줌

- first : 현재 루프가 처음인지 여부

- last  : 현재 루프가 마지막인지 여부

- begin : 반복에 사용 될 것 중 첫번째 항목의 index

- end : 반복에 사용될 것 중 마지막 항목의 index

<c:forTokens>	구분자로 분리된 각각의 토큰을 처리할 때 사용	
<c:forTokens var="토큰을 저장할 변수" items="토큰으로 나눌 문자열" delims="구분자">

 실행 값

</c:forTokens>

<c:import>	외부의 자원을 URL을 지정하여 가져다 사용	
<c:import url="URL" [var="변수 이름"] [scope="영역"] [charEncoding="charEncoding"]><c:import>

<c:redirect>	지정된 경로로 이동	<c:redirect url="URL" [context="경로명"]>
<c:url>	url 재작성	<c:url value="URL" [var="변수 이름"] [scope="영역"]></c:url>
<c:out>	데이터를 출력할 때 사용하는 태그, <%= %>대체	<c:out value="value" [default="기본값"]>
<c:catch>	예외처리	
<c:catch var="변수 이름">

예외가 발생할 수 있는 코드

</c:catch>

