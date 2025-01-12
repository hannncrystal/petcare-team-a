<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Top header start -->
<!-- Header -->

<header class="header" id="header">
	<div>
		<div class="header_top">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_top_content d-flex flex-row align-items-center justify-content-start">
							<div class="logo">
								<a href="/"><img src="/resources/images/logo.png" align="left" width="250px"></a>	
							</div>
							<div class="header_top_extra d-flex flex-row align-items-center justify-content-start ml-auto">
								<div class="header_top_nav">
									<ul class="d-flex flex-row align-items-center justify-content-start">
										<c:choose>
					                		<c:when test="${not empty sessionScope.user}">
					                			<li>
					                				${sessionScope.user.userName}님 환영합니다.
					                				<a href="/logout" class="sign-in"><i class="fa fa-sign-in"></i> Logout</a>
					                			</li>
					                		</c:when>
					                		<c:when test="${not empty sessionScope.hospital}">
					                			<li>
					                				${sessionScope.hospital.hospitalId}님 환영합니다.
					                				<a href="/logout" class="sign-in"><i class="fa fa-sign-in"></i> Logout</a>
					                			</li>
					                		</c:when>
					                		<c:otherwise>
					                			<li>
					                        		<a href="/login" class="sign-in"><i class="fa fa-sign-in"></i> Login</a>
					                    		</li>
					                    		<li>
					                        		<a href="/select" class="sign-in"><i class="fa fa-user"></i> Register</a>
					                    		</li>
					                		</c:otherwise>
					                	</c:choose>
									</ul>
								</div>
								<!-- <div class="header_top_phone">
									<i class="fa fa-phone" aria-hidden="true"></i>
									<span>+34 586 778 8892</span>
								</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header_nav" id="header_nav_pin">
			<div class="header_nav_inner">
				<div class="header_nav_container">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="header_nav_content d-flex flex-row align-items-center justify-content-start">
									<nav class="main_nav">
										<ul class="d-flex flex-row align-items-center justify-content-start">
											<li>
						                        <a href="/hospital/list">검색</a></li>
						                	 <c:if test="${not empty sessionScope.user}">
						                	<li>
						                        <a href="/favorite/foruser">즐겨찾기</a></li>
						                      </c:if>  
						                	 <c:if test="${not empty sessionScope.hospital}">
						                	<li>
						                        <a href="/favorite/forhospital" >즐겨찾기</a></li>
						                      </c:if>      	
						                     <li>
						                        <a href="/faq/faqList">FAQ</a></li>
						                    <c:if test="${not empty sessionScope.user}">
							                    <li><a href="/pet/list" >반려동물 목록</a></li>
							                    <li><a href="/pet/register" >반려동물 등록</a></li>
							                    <li><a href="/member/modifyForm" >개인정보 수정</a></li>
							                    <li><a href="/userAppointment/list" >예약내역 목록</a></li>
						              		</c:if>
						              		<c:if test="${not empty sessionScope.hospital}">
							                     <li><a href="/hospital/modifyForm" >개인정보 수정</a></li>
							                      <li><a href="/appointment/list" >예약내역 목록</a></li>
							                      <li><a href="/mr/list" >진료기록</a></li>
						              		</c:if>            
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</div>
</header>
<br><br><br><br><br><br><br><br><br>
<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script> -->
<script>
	$('.dropdown-toggle').dropdown();
</script>

<!-- Top header end -->

