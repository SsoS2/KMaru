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

	
</style>
	<h1>userSignUp</h1>
	
 <div class="box box-primary">
	<div class="box-header with-border">
		<h3 class="box-title">회원가입</h3>
	</div>
	<!-- enctype="multipart/form-data" -->
	<form action="" method="post" enctype="multipart/form-data">
		<div class="box-body">
			<div class="form-group">
				<label for="exampleInput">아이디</label> 
				<input type="text" class="form-control" id="us_id" name="us_id" placeholder="ID">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">비밀번호</label> 
				<input type="password" class="form-control" id="us_pw" name="us_pw" placeholder="Password">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">비밀번호 재확인</label> 
				<input type="password" class="form-control" id="us_pw2" name="us_pw2" placeholder="Password">
			</div>
			<div class="form-group">
				<label for="exampleInput">이름</label> 
				<input type="text" class="form-control" id="us_name" name="us_name" placeholder="name">
			</div>
			<div class="form-group">
				<label for="exampleInputFile">프로필 사진</label> 
				<input type="file" id="us_img" name="fileName" >
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">이메일</label> 
				<input type="email" class="form-control" id="us_email" name="us_email" placeholder="Email">
			</div>
			<div class="form-group">
				<label for="exampleInput">전화번호</label> 
				<input type="text" class="form-control" id="us_tel" name="us_tel" placeholder="Phone number ">
			</div>
		</div>
		<div class="checkbox">
			<label> <input type="checkbox" name="checkbox" > <a href="">이용약관</a>및 <a href="">개인정보취급방침</a>에 동의합니다.</label>
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-primary">회원가입</button>
		</div>
	</form>
</div>
<%@include file="../include/footer.jsp" %>
