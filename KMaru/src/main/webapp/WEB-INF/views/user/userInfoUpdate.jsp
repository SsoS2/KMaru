<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<style>
.box{
    padding-left: 20px;
    margin: auto 3%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
}

.form-group{
	width: 466px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

input[type="file"]{
	background: #fff;
	border: 1px solid #dbdbdb;
    border-radius: 4px;
    color: #000;
}

.modal{
	position:absolute;
	display:none;
	justify-content: center;
	top:0;
	left:0;
	width:100%;
	height:100%;
	background-color: rgba(0,0,0,0.4);
	overflow: hidden;
	z-index: 1;
}

.modal_body{
	position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 400px;
    height: 600px;
    padding: 40px;
    text-align: center;
    background-color: rgb(255,255,255);
    border-radius: 10px;
    box-shadow: 0 2px 3px 0 rgba(34,36,38,0.15);
    z-index: 2;
}

.a{
	margin-top: -13px;
    margin-left: 28%;
    font-size: smaller;
}

input[id="us_pw2"]{
    margin-bottom: 0rem;
}

font{
	margin-bottom: 1.5rem;
}
</style>
<script type="text/javascript">
$(function(){
	$('#us_pw2').keyup(function(){
		var us_pw = $("#us_pw").val();
		var us_pw2 = $("#us_pw2").val();
		if(us_pw != "" && us_pw2 != ""){
			if(us_pw != us_pw2){
				$("#checkPw").html('비밀번호가 일치하지않습니다.');
				$("#checkPw").attr('color','red');
				$("#updateBtn").attr('disabled', 'disabled');
				document.fr.us_pw2.focus();
			}else{
				$("#checkPw").text("비밀번호가 일치합니다.");
				$("#checkPw").attr('color','green');
				$("#updateBtn").removeAttr("disabled");
			}
		}
	});
});
</script>

 <div class="box">
		<h2 class="box-title">내 정보 수정하기</h2>
		<form action="/user/userInfoUpdate" method="post">
			<div class="form-group">
				<label>아이디</label> 
				<input type="text" name="us_id" value="${vo.us_id }" readonly>
			</div>
			<div class="form-group">
				<label>이름</label> 
				<input type="text" name="us_name" value="${vo.us_name }">
			</div>
			<div class="form-group">
				<label>이메일</label> 
				<input type="email" name="us_email" value="${vo.us_email }">
			</div>
			<div class="form-group">
				<label>전화번호</label> 
				<input type="text"  name="us_tel" value="${vo.us_tel }">
			</div>
			<div class="form-group">
				<label>새 비밀번호</label> 
				<input type="text"  name="us_pw" id="us_pw" >
			</div>
			<div class="form-group">
				<label>새 비밀번호 확인</label> 
				<input type="text" id="us_pw2">
				<font id="checkPw" size="2"></font>
			</div>
		<div class="form-group">
			<button type="submit" id="updateBtn">수정하기</button>
		</div>
	</form>
</div>
<%@include file="../include/footer.jsp" %>
