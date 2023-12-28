<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>


<style>
fieldset{
	padding-left: 20px;
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
    margin-left: 312%;
    font-size: small;
}

input[name="us_id"],input[name="us_email"] {
    padding-left: 40px;    
}

.focus{
	padding-left: 10px;
}

</style>
<h1>userFindPw</h1>
<div>
	<fieldset>
		<form action="" method="post" class="form" >
			<div class="form">
				<i class="icon icon-user iu"></i>
				<input type="text" name="us_id" placeholder="    ID" class="focus" >
			</div>
			<div class="form">
				<i class="fa fa-envelope-o ip"></i>
				<input type="text" name="us_email" placeholder="    Email" class="focus">
			</div>
			<input type="submit" class="find" value="비밀번호찾기">
			<div class="a">
				<a href="/user/userLogin">로그인 |</a>
				<a href="/user/userFindId"> 아이디찾기 | </a>
				<a href="/user/userSignUp"> 회원가입</a>
			</div>
		</form>
	</fieldset>
</div>


<%@include file="../include/footer.jsp" %>