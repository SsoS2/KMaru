<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>

<body>
	
	<form>
		<img alt="전통다과" src="/resources/img/전통다과.jpg"><br>
		<input type="text" value="${className }">
		예약 날짜 <input type="text" value="${classTime }">
		시간 <input type="text"> 
	
	</form>
	

	<form action="" method="post">
	
		인원 <input type="text"> <br>
		예약자 <input type="text"> <br>
		연락처 <input type="text"> <br>
		금액 <input type="text"> <br>
		특이사항 <input type="text"> <br>
	
		<input type="submit" value="예약하기">
	</form>
	

	



</body>
</html>
<%@ include file="../include/footer.jsp" %>