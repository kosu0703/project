<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<link href="<c:url value="/resources/css/update_page.css"/>"
	rel='stylesheet' />

<script type="text/javascript">
	function update_go(f) {
		//	수정하기 누르면 비밀번호 검사 후
		//	맞으면 정보가지고 감
		f.action = "";
		f.submit();
	}
</script>

<title>회원정보수정 페이지</title>
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

			<h2>회원정보수정</h2>

			<div class="update">
				<form action="#" method="post">
					<fieldset>
						<legend>회원 정보</legend>
						<ul>
							<li><label for="uname">이름 : </label> <input type="text"
								name="name" value="DB이름" required></li>
							<li><label for="phone">연락처 : </label> <input type="text"
								name="phone" value="DB연락처" required></li>
							<li><label for="mail">이메일 : </label> <input type="text"
								name="email" value="DB이메일" required></li>
							<li><label for="birth">생년월일 : </label> <input type="text"
								name="birth" pattern="[0-9]{6}" value="DB생년월일"> <!-- patten 은 숫자형식과 자릿수도 맞춰야 넘어간다. -->
							</li>
							<li>
								<!-- checked : 남자가 기본으로 선택되어 있도록 기본값 --> <label for="gender">성별
									: </label> <input type="radio" name="gender" value="1" checked>
								남자 <input type="radio" name="gender" value="2"> 여자 <!-- 남성이든 1이든 파라미터는 일단 문자열로 넘어간다. -->
							</li>
							<li><label for="addr">배송 주소 : </label> <input type="text"
								name="addr" value="회원가입시 받은 기본배송지 주소값" required></li>
							<li><label for="pwd">비밀번호확인 : </label> <input
								type="password" name="pwd" required></li>
						</ul>
					</fieldset>
					<br> <input type="button" value="수정하기"
						onclick="update_go(this.form)"> <input type="reset"
						value="취소">
				</form>
			</div>

		</div>

		<!--===============================================================================  -->


		<%@ include file="../common/footer.jsp"%>
	</section>
</body>
</html>
