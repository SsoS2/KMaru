<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>

<body>
   	<section id="latest-collection">
      <div class="container">
        <div class="product-collection row">
          <div class="col-lg-7 col-md-12 left-content">
            <div class="collection-item">
              <div class="products-thumb">
                <img src="${pageContext.request.contextPath }/resources/images/collection-item1.jpg" alt="collection item" class="large-image image-rounded">
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 product-entry">
                <div class="categories">casual collection</div>
                <h3 class="item-title">street wear.</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim massa diam elementum.</p>
                <div class="btn-wrap">
                  <a href="shop.html" class="d-flex align-items-center">shop collection <i class="icon icon-arrow-io"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-5 col-md-12 right-content flex-wrap">
            <div class="collection-item top-item">
              <div class="products-thumb">
                <img src="${pageContext.request.contextPath }/resources/images/collection-item2.jpg" alt="collection item" class="small-image image-rounded">
              </div>
              <div class="col-md-6 product-entry">
                <div class="categories">Basic Collection</div>
                <h3 class="item-title">Basic shoes.</h3>
                <div class="btn-wrap">
                  <a href="shop.html" class="d-flex align-items-center">shop collection <i class="icon icon-arrow-io"></i>
                  </a>
                </div>
              </div>
            </div>
            <div class="collection-item bottom-item">
              <div class="products-thumb">
                <img src="${pageContext.request.contextPath }/resources/images/collection-item3.jpg" alt="collection item" class="small-image image-rounded">
              </div>
              <div class="col-md-6 product-entry">
                <div class="categories">Best Selling Product</div>
                <h3 class="item-title">woolen hat.</h3>
                <div class="btn-wrap">
                  <a href="shop.html" class="d-flex align-items-center">shop collection <i class="icon icon-arrow-io"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
<p>    
	예약안내<br>
	
	예약 <br>
	
	1. 예약 안내 <br>
	- 예약자 이름, 연락처 두 가지 정보만 입력하시면 예약이 가능합니다. <br>
	- 예약 확정 및 예약번호 문자 발송을 위하여 확인 가능한 연락처로 입력 부탁드립니다. <br>
	- 가상계좌 입금 대기 시간은 예약하기 버튼 클릭부터 최대 10분까지이고, 10분 이내 미입금시 자동 예약 취소 됩니다. <br>
	- 입금 시 예약자명과 입금자명이 일치해야 합니다. <br>
	- 문자로 발송된 예약번호로 예약 조회 및 취소 가능합니다. <br>
	- 예약완료 문자를 받지 못하신 경우 예약이 안된 경우이니 해당 매장으로 유선 문의 부탁드립니다. <br>
	
	2. 예약 오픈 시간 안내 <br>
	- 평일/주말 상관없이 해당 시간에 예약 오픈됩니다. <br>
	
	3. 예약 변경 (날짜 / 시간 / 인원변경) <br>
	- 이용 날짜 및 시간, 테마 변경은 불가능합니다. 사이트를 통해 취소 후 재예약 부탁드립니다. <br>
	- 이용 인원이 변경된 경우, 이용일 당일 매장에서 추가 결제 및 부분 환불 도와드리겠습니다. <br>
	
	4. 예약 취소 <br>
	- 예약 취소는 24시간 전까지 가능합니다. (자정 기준)<br>
	- 홈페이지 상단 'RESERVATION' > '예약확인 및 취소' 탭을 통해 예약 취소하실 수 있습니다.<br>
	- 당일 예약 건을 포함하여 클래스 이용 당일에는 취소 및 환불이 불가합니다.<br>
	- 환불 계좌번호 입력 시, 예약자명과 예금주명이 일치해야 합니다.<br>
	- 환불은 영업일 기준 최대 1~2일 소요될 수 있습니다.<br>
	
	클래스 진행<br>
	
	1. 클래스의 원활한 진행을 위해 이용 시간보다 10분 일찍 도착 부탁드립니다. (클래스 진행 시간 이후 도착 시, 시간에 따라 클래스 과정이 생략될 수 있습니다.)<br>
	2. 인화성 물질 및 소지품은 라커룸에 보관하셔야 합니다<br>
	3. 클래스 진행중 조리도구를 망가트리지 않도록 주의해주세요<br>
	4. 클래스 진행중 질문이 있으시면 편하게 말씀해주세요<br>
	5. 클래스 진행중 돌발상황이 발생하면 바로 말씀해주세요<br>
	
	입장 제한 및 환불불가 안내<br>
	
	1. 지각 및 NO SHOW<br>
	클래스는 시간대 별 예약으로 진행되어, 최소 시작 10분 전 도착하여야 합니다. NO SHOW(불참)의 경우 환불 불가합니다.<br>
	　
	2. 과도한 음주자<br>
	과도한 음주자는 클래스 참여가 제한될 수 있습니다.<br>
</p>    
    
	<%@ include file="../include/footer.jsp" %>
	



</body>
</html>