<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>


<style>
fieldset{
	padding-left: 20px;
	padding-bottom: 33px;
    margin: auto 3%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
}
.form{
	width: 466px;
	display: flex;
    flex-direction: column;
    justify-content: space-between;
}	
.iu{
	position: absolute;
    padding-top: 15px;
    padding-left: 13px;
}
.ip{
    position: absolute;
    padding-top: 16px;
    padding-left: 14px;
}
.a{
	margin-top: -18px;
    margin-left: 31%;
    font-size: small;
}

input[name="us_name"],input[name="us_email"] {
    padding-left: 40px;    
}

.focus{
	padding-left: 10px;
}

</style>
<script>
$(function(){
	$('.find').click(function(){
		var us_name = $('input[name=us_name]').val();
		var us_email = $('input[name=us_email]').val();
		$.ajax({
			url : "/user/userFindIdCompare",
			data : {
				"us_name" : us_name,
				"us_email" : us_email
			},
			dataType : "json",
			success : function(data){
				console.log(data);
				alert(data);
				if(data != null && data == "0"){
					alert("회원이 아닙니다.");
				}else{
					alert("고객님의 ID는 "+data+" 입니다.");
					location.href="/user/userLogin";
				}
			}
		});
	});//find
});
</script>
<div>
	<fieldset>
	<h2>아이디 찾기</h2>
	<div class="form" >
			<div class="form">
				<i class="icon icon-user iu"></i>
				<input type="text" name="us_name" placeholder="    Name(실명)" class="focus" >
			</div>
			<div class="form">
				<i class="fa fa-envelope-o ip"></i>
				<input type="text" name="us_email" placeholder="    Email" class="focus">
			</div>
			<input type="button" class="find" value="아이디찾기">
			<div class="a">
				<a href="/user/userLogin">로그인 |</a>
				<a href="/user/userFindPw"> 비밀번호찾기 | </a>
				<a href="/user/userSignUp"> 회원가입</a>
			</div>
		</div>
	</fieldset>
</div>


<%@include file="../include/footer.jsp" %>