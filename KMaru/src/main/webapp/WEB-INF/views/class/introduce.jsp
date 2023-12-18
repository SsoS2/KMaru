<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>

</head>

<body>


	<!-- 메인사진 -->
	<section id="billboard" class="overflow-hidden">

      <div class="swiper main-swiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide" style="background-image: url('${pageContext.request.contextPath }/resources/images/banner1.jpg');background-repeat: no-repeat;background-size: cover;background-position: center;">
            <div class="banner-content">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <h2 class="banner-title">전통이 숨쉬는 곳<br>한마루에 오신걸 환영합니다!</h2>
                    <p>
                   	</p>
                    <div class="btn-wrap">
                      <a href="shop.html" class="btn btn-light btn-medium d-flex align-items-center" tabindex="0">클래스 신청하러 가기 <i class="icon icon-arrow-io"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- 한마루란? -->
   	<section class="shoppify-section-banner">
      <div class="container">
    	<h2 class="section-title">한마루 소개</h2>
        <div class="product-collection">
          <div class="left-content collection-item">
            <div class="products-thumb">
              <img src="${pageContext.request.contextPath }/resources/images/model.jpg" alt="collection item" class="large-image image-rounded">
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 product-entry">
              <div class="categories">경력 12년</div>
              <h3 class="item-title">전통을 사랑하는 강사</h3>
              <p>
              	이력<br>
              	2021 한국대학교 전통학과 졸업 <br>
              	2022 전통협회 협회장<br>
              	2023 한마루 오픈 <br>
              </p>
            </div>
          </div>
        </div>        
      </div>
    </section>
    <hr>
    <!-- 강사소개 -->
    <!-- 김예빈 - 전통음식 -->
   	<section class="shoppify-section-banner">
      <div class="container">
    	<h2 class="section-title">강사 소개</h2>
        <div class="product-collection">
          <div class="left-content collection-item">
            <div class="products-thumb">
              <img src="${pageContext.request.contextPath }/resources/images/model.jpg" alt="collection item" class="large-image image-rounded">
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 product-entry">
              <div class="categories">전통음식 담당</div>
              <h3 class="item-title">김예빈 강사</h3>
              <p>
              	이력<br>
              	2021 한국대학교 전통학과 졸업 <br>
              	2022 전통협회 협회장<br>
              	2023 한마루 오픈 <br>
              </p>
              <div class="btn-wrap">
                <a href="shop.html" class="d-flex align-items-center">전통음식 클래스 수강하기 <i class="icon icon-arrow-io"></i>
                </a>
              </div>
            </div>
          </div>
        </div>        
      </div>
    </section>
    <!-- 김선은 - 전통음식 -->
   	<section class="shoppify-section-banner">
      <div class="container">
        <div class="product-collection">
          <div class="left-content collection-item">
            <div class="products-thumb">
              <img src="${pageContext.request.contextPath }/resources/images/model.jpg" alt="collection item" class="large-image image-rounded">
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 product-entry">
              <div class="categories">전통다과 담당</div>
              <h3 class="item-title">김선은 강사</h3>
              <p>
              	이력<br>
              	2021 한국대학교 전통학과 졸업 <br>
              	2022 전통협회 협회장<br>
              	2023 한마루 오픈 <br>
              </p>
              <div class="btn-wrap">
                <a href="shop.html" class="d-flex align-items-center">전통다과 클래스 수강하기 <i class="icon icon-arrow-io"></i>
                </a>
              </div>
            </div>
          </div>
        </div>        
      </div>
    </section>
    <!-- 윤소지 - 전통음식 -->
   	<section class="shoppify-section-banner">
      <div class="container">
        <div class="product-collection">
          <div class="left-content collection-item">
            <div class="products-thumb">
              <img src="${pageContext.request.contextPath }/resources/images/model.jpg" alt="collection item" class="large-image image-rounded">
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 product-entry">
              <div class="categories">전통음료 담당</div>
              <h3 class="item-title">윤소지 강사</h3>
              <p>
              	이력<br>
              	2021 한국대학교 전통학과 졸업 <br>
              	2022 전통협회 협회장<br>
              	2023 한마루 오픈 <br>
              </p>
              <div class="btn-wrap">
                <a href="shop.html" class="d-flex align-items-center">전통음료 클래스 수강하기 <i class="icon icon-arrow-io"></i>
                </a>
              </div>
            </div>
          </div>
        </div>        
      </div>
    </section>
    
    <hr>
    <section id="latest-blog" class="padding-large">
      <div class="container">
        <div class="section-header d-flex flex-wrap align-items-center justify-content-between">
          <h2 class="section-title">체험 갤러리</h2>
          <div class="btn-wrap align-right">
            <a href="blog.html" class="d-flex align-items-center"> 더보기 <i class="icon icon icon-arrow-io"></i>
            </a>
          </div>
        </div>
        <div class="row d-flex flex-wrap">
          <article class="col-md-4 post-item">
            <div class="image-holder zoom-effect">
              <a href="single-post.html">
                <img src="${pageContext.request.contextPath }/resources/images/post-img1.jpg" alt="post" class="post-image">
              </a>
            </div>
            <div class="post-content d-flex">
              <div class="meta-date">
                <div class="meta-day text-primary">22</div>
                <div class="meta-month">Aug-2021</div>
              </div>
              <div class="post-header">
                <h3 class="post-title">
                  <a href="single-post.html">top 10 casual look ideas to dress up your kids</a>
                </h3>
                <a href="blog.html" class="blog-categories">Fashion</a>
              </div>
            </div>
          </article>
          <article class="col-md-4 post-item">
            <div class="image-holder zoom-effect">
              <a href="single-post.html">
                <img src="${pageContext.request.contextPath }/resources/images/post-img2.jpg" alt="post" class="post-image">
              </a>
            </div>
            <div class="post-content d-flex">
              <div class="meta-date">
                <div class="meta-day text-primary">25</div>
                <div class="meta-month">Aug-2021</div>
              </div>
              <div class="post-header">
                <h3 class="post-title">
                  <a href="single-post.html">Latest trends of wearing street wears supremely</a>
                </h3>
                <a href="blog.html" class="blog-categories">Trending</a>
              </div>
            </div>
          </article>
          <article class="col-md-4 post-item">
            <div class="image-holder zoom-effect">
              <a href="single-post.html">
                <img src="${pageContext.request.contextPath }/resources/images/post-img3.jpg" alt="post" class="post-image">
              </a>
            </div>
            <div class="post-content d-flex">
              <div class="meta-date">
                <div class="meta-day text-primary">28</div>
                <div class="meta-month">Aug-2021</div>
              </div>
              <div class="post-header">
                <h3 class="post-title">
                  <a href="single-post.html">types of comfortable clothes ideas for women</a>
                </h3>
                <a href="blog.html" class="blog-categories">Inspiration</a>
              </div>
            </div>
          </article>
        </div>
      </div>
    </section>
    

	
	
	<%@ include file="../include/footer.jsp" %>

</body>
</html>