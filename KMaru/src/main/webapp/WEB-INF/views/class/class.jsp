<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.sub_title{

}


.class_img{

	width: 300px;
	height: 300px;
}


.class_name{

	font-weight: bold;
	width: 300px;
	height: 300px;
	text-align: center;
	border: 10px; 
}

.class_time{
	text-align: center;
	border: 10px; 
	width : 100px;
	height : 40px;
	color : black;
	list-style : none;
}


</style>
</head>

<body>

	<hr>
	<h2 class="sub_title">클래스 신청하기</h2>

	<section class="class_rev">
		<div class="class_rev_date">
			<form>
				<input type="date" name="b_date" id="b_date">
			</form>
		</div>
		<hr>
		<!-- 전통음식 -->
		<div class="Class_food">
			<img class="class_img" alt="전통음식" src="/resources/img/전통음식.JPG"><br>
			<input type="text" value="전통음식" class="class_name" readonly> 
			<div class="class_time_div">
				<ul>
					<li class="class_time,class_time_10"><a href="/class/booking?b_class=전통음식&b_time=10">10:00</a></li>
					<li class="class_time,class_time_13"><a href="/class/booking?b_class=전통음식&b_time=13">13:00</a></li>
					<li class="class_time,class_time_15"><a href="/class/booking?b_class=전통음식&b_time=15">15:00</a></li>
					<li class="class_time,class_time_17"><a href="/class/booking?b_class=전통음식&b_time=17">17:00</a></li>
				</ul>
			</div>			
		</div>	
		<!-- 전통다과 -->
		<div class="Class_snack">
			<img class="class_img" alt="전통다과" src="/resources/img/전통다과.JPG"><br>
			<input type="text" value="전통다과" class="class_name" readonly> 
			<div class="class_time_div">
				<ul>
					<li class="class_time,class_time_10"><a href="/class/booking?b_class=전통다과&b_time=10">10:00</a></li>
					<li class="class_time,class_time_13"><a href="/class/booking?b_class=전통다과&b_time=13">13:00</a></li>
					<li class="class_time,class_time_15"><a href="/class/booking?b_class=전통다과&b_time=15">15:00</a></li>
					<li class="class_time,class_time_17"><a href="/class/booking?b_class=전통다과&b_time=17">17:00</a></li>
				</ul>
			</div>
		</div>	
		<!-- 전통음료 -->
		<div class="class_drink">
			<img class="class_img" alt="전통음료" src="/resources/img/전통음료.JPG"><br>
			<input type="text" value="전통음료" class="class_name" readonly> 
			<div class="class_time_div">
				<ul>
					<li class="class_time,class_time_10"><a href="/class/booking?b_class=전통음료&b_time=10">10:00</a></li>
					<li class="class_time,class_time_13"><a href="/class/booking?b_class=전통음료&b_time=13">13:00</a></li>
					<li class="class_time,class_time_15"><a href="/class/booking?b_class=전통음료&b_time=15">15:00</a></li>
					<li class="class_time,class_time_17"><a href="/class/booking?b_class=전통음료&b_time=17">17:00</a></li>
				</ul>
			</div>
		</div>
	</section>
    
    종류(음식)
    일정(날짜)
    회차(시간)
    인원/수량
    

    
<%@ include file="../include/footer.jsp" %>

<script type="text/javascript">

	$(document).ready(function(){
		
		var serverTime = ${serverTime};
		console.log(serverTime);
		
	});

</script>

</body>
</html>