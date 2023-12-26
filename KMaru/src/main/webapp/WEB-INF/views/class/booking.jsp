<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>

<body>

	<!-- 이상한 경로로 왔을 시 이동 -->
	<!-- 로그인 창으로 이동 -->
	<c:if test="${empty us_id}">
		${"<script>alert('로그인이 필요합니다');location.href='/user/userLogin';</script>" }
	</c:if>
	<!-- 클래스 선택 창으로 이동 -->
	<c:if test="${empty b_class && !empty us_id}">
		<c:redirect url="../class/class"/>
	</c:if>
	
	
	<form>
		<img alt="${b_class }" src="/resources/img/${b_class }.JPG"><br>
		<input type="hidden" value="${b_class }">
		예약 날짜 <input type="text" value="${b_date }">
		시간 <input type="text" value="${b_time }:00"> 
	
	</form>
	

	<form action="" method="post">
	
		인원 <br> <input type="number" value="1" placeholder="최대6명"> <br>
		예약자  <br> <input type="text" placeholder="ex)김영희"> <br>
		연락처  <br> <input type="tel"> <br>
		금액  <br> <input type="text" value="30,000원" readonly> <br>
		요청사항 <br> <textarea rows="3" cols="25"></textarea> <br>
	
		결제 방법
		<input type="text" value="무통장입금">
		<input type="text" value="카드결제">
		<input type="text" value="카카오페이">
		<input type="text" value="간편결제">
		
		<input type="submit" value="예약하기">
	</form>
	

	



</body>
</html>
<%@ include file="../include/footer.jsp" %>