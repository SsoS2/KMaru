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

</style>
<div>
	<fieldset>
		<h2>비밀번호 확인</h2>
		<form action="/user/userInfoUpdatePwCheck" method="post">
			<input type="text" name="us_pw">
			<input type="submit" value="확인" style="margin-top: 20px;">
			<input type="button" value="돌아가기" onclick="location.href='/user/userInfo';" style="margin-top: 20px;">
		</form>
	</fieldset>
</div>
<%@include file="../include/footer.jsp" %>