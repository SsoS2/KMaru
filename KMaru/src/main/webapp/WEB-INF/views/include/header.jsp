<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en"> 
  <head>
    <title>Ultras - Clothing Store eCommerce Store HTML Website Template</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/icomoon/icomoon.css">
    <link rel="stylesheet" type="text/css" media="all" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/style.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <!-- script
    ================================================== -->
    <!-- jquery cdn -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/modernizr.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  </head>
  
  <body>
  <script type="text/javascript">
	  $('#noti').click(function () {return false;});
  </script>
  <style>
  .menu-item{
	  position : relative;
	  display : inline-block;
	}
	
	.submenu{
	  display : none;
	  position : absolute;
	}
	
	.submenu a{
	  display : block;
	}
	
	.menu-item:hover .submenu{
	  display: block;
	}
	
	.logout{
		margin-right: 10px;
	}
  </style>
	
    <div class="preloader-wrapper">
      <div class="preloader">
      </div>
    </div>

    <div class="search-popup">
      <div class="search-popup-container">

        <form role="search" method="get" class="search-form" action="">
          <input type="search" id="search-form" class="search-field" placeholder="Type and press enter" value="" name="s" />
          <button type="submit" class="search-submit"><a href="#"><i class="icon icon-search"></i></a></button>
        </form>

        <h5 class="cat-list-title">Browse Categories</h5>
        
        <ul class="cat-list">
          <li class="cat-list-item">
            <a href="shop.html" title="Men Jackets">Men Jackets</a>
          </li>
          <li class="cat-list-item">
            <a href="shop.html" title="Fashion">Fashion</a>
          </li>
          <li class="cat-list-item">
            <a href="shop.html" title="Casual Wears">Casual Wears</a>
          </li>
          <li class="cat-list-item">
            <a href="shop.html" title="Women">Women</a>
          </li>
          <li class="cat-list-item">
            <a href="shop.html" title="Trending">Trending</a>
          </li>
          <li class="cat-list-item">
            <a href="shop.html" title="Hoodie">Hoodie</a>
          </li>
          <li class="cat-list-item">
            <a href="shop.html" title="Kids">Kids</a>
          </li>
        </ul>
      </div>
    </div>
    <header id="header">
      <div id="header-wrap">
        <nav class="secondary-nav border-bottom">
          <div class="container">
            <div class="row d-flex align-items-center">
              <div class="col-md-4 header-contact">
               <!--  <p>Let's talk! <strong>+57 444 11 00 35</strong> -->
                </p>
              </div>
              <div class="col-md-4 shipping-purchase text-center">
              <!--   <p>Free shipping on a purchase value of $200</p> -->
              </div>
              <div class="col-md-4 col-sm-12 user-items">
                <ul class="d-flex justify-content-end list-unstyled">
                <c:if test="${!empty us_id }">
                	<a href="/user/userLogout" class="logout">로그아웃</a>
                </c:if>
                <c:if test="${empty us_id }">
                  <li>
                    <a href="/user/userLogin">
                      <i class="icon icon-user"></i>
                    </a>
                  </li>
                </c:if>
                <c:if test="${!empty us_id }">
                  <li>
                    <a href="/user/userInfo">
                      <i class="icon icon-user"></i>
                    </a>
                  </li>
                </c:if>
                  <li>
                    <a href="cart.html">
                      <i class="icon icon-shopping-cart"></i>
                    </a>
                  </li>
                  <li>
                    <a href="wishlist.html">
                      <i class="icon icon-heart"></i>
                    </a>
                  </li>
                  <li class="user-items search-item pe-3">
                    <a href="#" class="search-button">
                      <i class="icon icon-search"></i>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </nav>
        <nav class="primary-nav padding-small">
          <div class="container">
            <div class="row d-flex align-items-center">
              <div class="col-lg-2 col-md-2">
                <div class="main-logo">
                  <a href="/KMaru">
                    <img src="${pageContext.request.contextPath }/resources/images/main-logo2.png" alt="logo" width="100px" height="100px">
                  </a>
                </div>
              </div>
              <div class="col-lg-10 col-md-10">
                <div class="navbar">

                  <div id="main-nav" class="stellarnav d-flex justify-content-end right">
                    <ul class="menu-list">

                      <li>
                        <a href="/class/introduce" class="item-anchor active d-flex align-item-center" data-effect="Home">한마루 소개</a>
                      </li>

                      <li class="menu-item has-sub">
                        <a href="../class/class" class="item-anchor d-flex align-item-center" data-effect="Pages">클래스 신청<i class="icon icon-chevron-down"></i></a>
                      	<ul class="submenu">
                          <li><a href="../class/classNotice" class="item-anchor">신청안내</a></li>
                          <li><a href="../class/class" class="item-anchor">신청하기</a></li>
                        </ul>
                      </li>

                      <li>
                      	<a href="contact.html" class="item-anchor" data-effect="Contact">체험 갤러리</a>
                      </li>

                      <li class="menu-item has-sub">
                        <a href="javascript:void(0);" id="noti" class="item-anchor d-flex align-item-center" data-effect="Blog">문의하기<i class="icon icon-chevron-down"></i></a>
                        <ul class="submenu">
                          <li><a href="/notice/noticeList?page=1" class="item-anchor">공지사항</a></li>
                          <li><a href="/notice/faqList?page=1" class="item-anchor">자주 묻는 질문</a></li>
                          <li><a href="/chat/chat" class="item-anchor">1 : 1 문의</a></li>
                        </ul>
                      </li>

                      <li>
                      	<a href="contact.html" class="item-anchor" data-effect="Contact">오시는 길</a>
                      </li>

                    </ul>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </nav>
      </div>
    </header>
