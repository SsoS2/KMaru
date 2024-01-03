<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>


<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.min.js"
  integrity="sha384-6MFdIr0zOira1CHQkedUqJVql0YtcZA1P0nbPrQYJXVJZUkTk/oX4U9GhUIs3/z8" crossorigin="anonymous"></script>
<script>
  Kakao.init('f5ac5c856a52dc0497590340ddbc9b60'); // 사용하려는 앱의 JavaScript 키 입력
</script>

<div id="add-channel-button"></div>

<script>

//   // 1. 채널 추가 버튼
//   Kakao.Channel.createAddChannelButton({
//     container: '#add-channel-button',
//     channelPublicId: '_kxcyPG',
//   });
  
  
  
  Kakao.Auth.setAccessToken('${ACCESS_TOKEN}');
  
  // 2. 채널간편추가
  Kakao.Channel.followChannel({
	  channelPublicId: '${_kxcyPG}',
	})
	  .then(function(response) {
	    console.log(response)
	    // 채널 간편 추가 성공 처리
	  })
	  .catch(function(error) {
	    console.error(error)
	    // 채널 간편 추가 실패 처리
	  })
</script>








<%@include file="../include/footer.jsp"%>