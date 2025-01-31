<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<link href="<c:url value="/resources/css/orderlist_page.css"/>"
	rel='stylesheet' />
<link href="<c:url value="/resources/css/wishlist_page.css"/>"
	rel='stylesheet' />


<script type="text/javascript">
	function buy_go() {
		//	구매하기 버튼 누르면 제품 상세 페이지로 이동
	}
</script>

<title>찜목록 페이지</title>
</head>
<body>
	<%@ include file="../common/header.jsp"%>



	<section>

		<!--===============================================================================  -->

		<div class="div">
			<br>
			<ul>
				<li><a href="#">주문목록</a></li>
				<li><a href="#">구매목록</a></li>
				<li><a href="#">찜목록</a></li>
				<li><a href="#">회원정보수정</a></li>
				<li><a href="#">회원탈퇴</a></li>
			</ul>

			<h2>찜목록</h2>

			<div class="wish">
				<c:choose>
					<c:when test="${empty wish_list}">
						<h3 style="margin: 0 auto;">위시리스트가 없습니다.</h3>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${wish_list}">
							<div class="product">
								<img src="resources/images/${k.f_name}">
								<h2>${k.p_name}</h2>
								<p>${k.p_price}원</p>
								<button onclick="buy_go()">구매하기</button>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>	
			</div>

		</div>

		<!--===============================================================================  -->


		<%@ include file="../common/footer.jsp"%>
	</section>
</body>
</html>
