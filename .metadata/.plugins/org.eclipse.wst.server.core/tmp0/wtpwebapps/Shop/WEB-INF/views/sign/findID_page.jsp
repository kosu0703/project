<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>아이디/비밀번호 찾기</title>
<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<link href="<c:url value="/resources/css/findID_page.css"/>" rel='stylesheet' />
<%-- <script src="/resources/js/그 페이지.js"></script>--%>
<script type="text/javascript">
	function number_go() {
		// 인증번호전송 버튼 클릭하면 이메일로 인증번호 날라감?...
	}

	function id_find() {
		// 확인 버튼 클릭하면 id 보여줌
	}
</script>
</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<!-- =========================================================== -->

	<section>
		<div id="find_wrap">
			<form action="" method="post">
				<a href="#"><div> <p>아이디 찾기</p> </div></a> 
				<a href="#"><div> <p>비밀번호 찾기</p> </div></a>

				<div id="find_input">
					<ul>
						<li><input type="radio" name="sign_email" value="" checked />가입한
							이메일로 찾기</li>
						<li><input type="text" name="email" placeholder="이메일 입력" />
						</li>
						<li><input type="button" value="인증번호 전송"
							onclick="number_go()" /></li>
						<li><input type="text" name="injeung" placeholder="인증번호 입력" />
						</li>
					</ul>
				</div>

				<input type="button" id="but_idfind" value="확인" onclick="id_find()" />
			</form>
		</div>

		<!-- =========================================================== -->

		<%@ include file="../common/footer.jsp"%>
	</section>
</body>
</html>
