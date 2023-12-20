<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>

<h1>userLogin</h1>

<fieldset>
	<form action="" method="post">
		아이디 : <input type="text" name="us_id"><br>
		비밀번호 : <input type="text" name="us_pw"><hr>
		
		<input type="submit" value="로그인">
		<input type="button" value="회원가입" onclick="location.href='/user/userSignUp';">
	</form>
</fieldset>


<%@include file="../include/footer.jsp" %>