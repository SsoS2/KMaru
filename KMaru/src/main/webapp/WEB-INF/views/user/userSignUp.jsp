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

input[id="us_id"]{
    margin-bottom: 0rem;
}

font{
	margin-bottom: 1.5rem;
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
</style>
<script type="text/javascript">
$(function(){
	$("#us_id").keyup(function(){
		var us_id = $("#us_id").val();
		if(us_id != ""){
			if(us_id.length < 6 ){
				$("#checkId").html('6자 이상 입력해주세요.');
				$("#checkId").attr('color','red');
				$("#join").attr('disabled', 'disabled');
				document.fr.us_id.focus();
			}else{
				$("#checkId").html("");
				console.log(us_id);
				$.ajax({
					url : "/user/userIdCheck",
					data : {
						"us_id" : us_id
					},
					dataType : "json",
					success : function(data){
						console.log(data);
						if(data == 0){
							$("#checkId").text("사용이 불가능한 아이디입니다.");
							$("#checkId").attr('color','red');
							$("#join").attr('disabled', 'disabled');
							document.fr.us_id.focus();
						}else{
							$("#checkId").text("사용이 가능한 아이디입니다.");
							$("#checkId").attr('color','green');
							$("#join").removeAttr("disabled");
						}
					}//success
				})// ajax
			}
		}
	});//id check
	
	function singUp(){
		var us_id = $('input[id=us_id]').val(); 
		var us_pw = $('input[id=us_pw]').val(); 
		var us_pw2 = $('input[id=us_pw2]').val(); 
		var us_name = $('input[id=us_name]').val(); 
		var us_email = $('input[id=us_email]').val(); 
		var us_tel = $('input[id=us_tel]').val(); 
		
		if(us_id == ""){
			
		}
	}
	
	 $(".modal_show").click(function(){
	    if ($(".modal").fadeIn()) {
	        document.body.style.overflow = 'hidden';
	      } else {
	        document.body.style.overflow = 'auto';
	      }
	  });
	  
	  $(".modal").click(function(){
		  if($(".modal").fadeOut()){
			  document.body.style.overflow = 'auto';
		  }else{
			  document.body.style.overflow = 'hidden';
		  }
	  });
	
});
</script>
 <div class="box">
	<h2 class="box-title">회원가입</h2>
	<!-- enctype="multipart/form-data" -->
	<form action="" method="post" enctype="multipart/form-data" name="fr">
		<div class="box-body">
			<div class="form-group">
				<label>아이디</label> 
				<input type="text" id="us_id" name="us_id" placeholder="ID" maxlength="15">
				<font id="checkId" size="2"></font>
			</div>
			<div class="form-group">
				<label>비밀번호</label> 
				<input type="password" id="us_pw" name="us_pw" placeholder="Password">
			</div>
			<div class="form-group">
				<label>비밀번호 재확인</label> 
				<input type="password" id="us_pw2" name="us_pw2" placeholder="Password">
			</div>
			<div class="form-group">
				<label>이름</label> 
				<input type="text" id="us_name" name="us_name" placeholder="name">
			</div>
			<div class="form-group">
				<label>프로필 사진</label> 
				<input type="file" id="us_img" name="fileName" >
			</div>
			<div class="form-group">
				<label>이메일</label> 
				<input type="email" id="us_email" name="us_email" placeholder="Email">
			</div>
			<div class="form-group">
				<label>전화번호</label> 
				<input type="text" id="us_tel" name="us_tel" placeholder="Phone number ">
			</div>
		</div>
		<div class="checkbox">
			<label> <input type="checkbox" name="checkbox" > <a href="#" class="modal_show">이용약관</a>및 <a href="">개인정보취급방침</a>에 동의합니다.</label>
		</div>
		<div class="form-group">
			<button type="submit" id="join" onclick="singUp()">회원가입</button>
			<div class="a">
				<a href="/user/userLogin"> 로그인 |</a>
				<a href="/user/userFindId"> 아이디찾기 | </a>
				<a href="/user/userFindPw"> 비밀번호찾기</a>
			</div>
		</div>
	</form>
</div>
<div class="modal">
	<div class="modal_body">
		<p>내용</p>
	</div>
</div>
<%@include file="../include/footer.jsp" %>
