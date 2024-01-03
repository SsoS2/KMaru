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

h2:hover ~ #delete {
	display: block;
}

#delete{
	display: none;
}
</style>

 <div class="box">
		<h2 class="box-title">내 정보</h2>
		<a href="/user/userDelete" id="delete">탈퇴하기</a>
		<form action="/user/userInfoUpdatePwCheck">
			<div class="form-group">
				<label>아이디</label> 
				<input type="text" name="us_id" value="${vo.us_id }" readonly>
			</div>
			<div class="form-group">
				<label>이름</label> 
				<input type="text" name="us_name" value="${vo.us_name }" readonly>
			</div>
			<div class="form-group">
				<label>이메일</label> 
				<input type="email" name="us_email" value="${vo.us_email }" readonly>
			</div>
			<div class="form-group">
				<label>전화번호</label> 
				<input type="text"  name="us_tel" value="${vo.us_tel }" readonly>
			</div>
		<div class="form-group">
			<button type="submit" id="updateBtn">수정하기</button>
		</div>
	</form>
</div>
<%@include file="../include/footer.jsp" %>
