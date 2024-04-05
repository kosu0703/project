<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/d3367b6d2f.js"></script>
<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<link href="<c:url value="/resources/css/main_page.css"/>" rel='stylesheet' />
<title>메인</title>
</head>
<body>
	<%@ include file="common/header.jsp"%> -
<%-- 	<jsp:include page="common/header.jsp"/> --%>
	<div class="adwrapper">
		<div class="adimage"></div>
		<div class="adimage_button">
			<form action="" method="post" class="adform">
				<input type="submit" class="adclose" name="adclose" value="닫기" /> <input
					type="hidden" value="close" />
			</form>

			<form action="main_adclose7.do" method="post" class="adform">
				<input type="submit" class="adclosecookie" name="adcookie"
					value="일주일동안 보지 않기" /> <input type="hidden" value="7dayclose" />
			</form>
		</div>
	</div>

	<section class="main">
		<div class="main_left"><h1>SH<br><br><br></h1></div>
		<div class="main_right"><h1>OP<br><br><br></h1></div>
		
		<div class="main_img">
			<img src="/resources/images/main_img.jpg" />
		</div>

	</section>
		<%@ include file="common/footer.jsp"%>
</body>
</html>