<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<link href="<c:url value="/resources/css/orderlist_page.css"/>" rel='stylesheet' />


<title>마이페이지</title>
</head>
<body>
	   <%@ include file="../common/header.jsp" %>
  


	<section>
	
<!--===============================================================================  -->

		<div class="div">
			<br>
			<ul>
				<li><a href="orderlist_page.do?u_idx=${u_idx}">주문목록</a></li>
				<li><a href="purchaselist_page.do?u_idx=${u_idx}">구매목록</a></li>
				<li><a href="wishlist_page.do?u_idx=${u_idx}">찜목록</a></li>
				<li><a href="#">회원정보수정</a></li>
				<li><a href="#">회원탈퇴</a></li>
			</ul>
		</div>

<!--===============================================================================  -->

  
      <%@ include file="../common/footer.jsp" %>
	</section>
</body>
</html>