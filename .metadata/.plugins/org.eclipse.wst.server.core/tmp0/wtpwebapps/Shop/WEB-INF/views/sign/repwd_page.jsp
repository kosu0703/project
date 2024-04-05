<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>아이디/비밀번호 찾기</title>
<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<link href="<c:url value="/resources/css/repwd_page.css"/>"
	rel='stylesheet' />
<script type="text/javascript">
	function repwd_go() {
		// 변경 버튼 클릭 시
		// 새비밀번호 = 새비밀번호확인 이면 변경 성공
	}
</script>
</head>
<body>
	<%@ include file="../common/header.jsp"%>


	<!-- =========================================================== -->

	<section>
		<div id="repwd_wrap">
			<form action="" method="post">
				<h1>비밀번호 변경</h1>
				<div id="repwd_box">
					<ul>
						<li>새 비밀번호<input type="password" name="repwd" required></li>
						<li>새 비밀번호 확인<input type="password" name="repwd_chk" required></li>
					</ul>
				</div>
				<input type="button" id="repwd_ok" value="변경" onclick="repwd_go()">
			</form>
		</div>

		<!-- =========================================================== -->


		<%@ include file="../common/footer.jsp"%>
	</section>

</body>
</html>