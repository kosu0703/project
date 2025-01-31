<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<link href="<c:url value="/resources/css/login_page.css"/>"
	rel='stylesheet' />

</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<!-- =========================================================== -->

	<section>
		<div id="login_wrap">
			<form action="login_ok.do" method="post">
				<h1>로그인</h1>
				<ul>
					<li><input type="text" name="u_id" placeholder="아이디" required></li>
					<li><input type="password" name="u_pwd" placeholder="비밀번호"
						required></li>
					<li><input type="submit" value="로그인" ></li>
				</ul>

			</form>
		</div>

		<!-- =========================================================== -->


		<%@ include file="../common/footer.jsp"%>
</body>
</html>