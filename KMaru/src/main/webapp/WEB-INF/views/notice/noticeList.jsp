<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<style>
.content-wrapper { 
	background-color: white;
}

* {
	box-sizing: border-box;
}

.que:first-child {
	border-top: 3px solid #d2d6de;
}

.que {
	position: relative;
	padding: 40px 0;
	cursor: pointer;
	font-size: 22px;
	font-weight: 600;
	border-bottom: 1px solid #dddddd;
}

.que::before {
	display: inline-block; font-size : 25px; color : #006633;
	margin: 0 10px;
	font-size: 25px;
	color: #006633;
}

.que.on>span {
	font-weight: bold;
	color: #006633;
}

.anw {
	display: none;
	overflow: hidden;
	font-size: 14px;
	background-color: #f4f4f4;
	padding: 30px 0;
}

.anw::before {
	display: inline-block;
	font-size: 14px;
	font-weight: bold;
	color: #666;
	margin: 0 5px;
}

.arrow-wrap {
	position: absolute;
	top: 50%;
	right: 10px;
	transform: translate(0, -50%);
}

.que .arrow-top {
	display: none;
}

.que .arrow-bottom {
	display: block;
}

.que.on .arrow-bottom {
	display: none;
}

.que.on .arrow-top {
	display: block;
}


#notice {
	position: relative;
	border-radius: 3px;
	background: #ffffff;
	margin-bottom: 20px;
	width: 100%;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	padding-left: 10%;
	padding-right: 10%;
	padding-top: 2%;
}

pre {
	border: none;
	background-color: #f4f4f4;
	font-weight: 600;
	font-size: medium;
}

h1 {
	font-size: 2em;
	color: #666;
}
li {
    display: inline-block;
    padding: 2px;
} 

</style>
<body>
	<div id="notice">
		<h1>공지사항</h1>
		<div id="Accordion_wrap">
			<c:forEach var="list" items="${noticeList }">
				<div class="que">
					<span>${list.no_title }</span>
					<div class="arrow-wrap">
						<span class="arrow-top">↑</span> <span class="arrow-bottom">↓</span>
					</div>
				</div>
				<div class="anw">
					<span><pre>${list.no_content }</pre></span>
				</div>
			</c:forEach>
		</div>
		<div class="page">
			<ul class="pagination pagination-sm no-margin pull-right">
				<c:if test="${pageVO.prev }">
					<li><a href="/notice/noticeList?page=${pageVO.startPage-1 } ">←</a></li>
				</c:if>

				<c:forEach var="i" begin="${pageVO.startPage }" end="${pageVO.endPage }" step="1">
					<li><a href="/notice/noticeList?page=${i }"> ${i }</a></li>
				</c:forEach>

				<c:if test="${pageVO.next }">
					<li><a href="/notice/noticeList?page=${pageVO.endPage+1 }">→</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</body>

<script type="text/javascript">
	$(".que").click(function() {
		$(this).next(".anw").stop().slideToggle(300);
		$(this).toggleClass('on').siblings().removeClass('on');
		$(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
	});
</script>

<%@include file="../include/footer.jsp"%>