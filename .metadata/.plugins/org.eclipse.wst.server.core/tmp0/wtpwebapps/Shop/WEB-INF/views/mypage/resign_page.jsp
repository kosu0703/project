<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<link href="<c:url value="/resources/css/resign_page.css"/>"
	rel='stylesheet' />

<script defer src="../js/header.js"></script>

<script type="text/javascript">
	function resign(f) {
		//	비밀번호 맞으면 회원탈퇴
		//	틀리면 비밀번호 다시 입력
		f.action = "";
		f.submit();
	}
</script>

<title>회원탈퇴 페이지</title>
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

			<h2>회원탈퇴</h2>

			<div class="resign">
				<form action="#" method="post">
					<fieldset>
						<ul>
							<li>
								<p>
									가입된 회원정보가 모두 삭제됩니다. <br>작성하신 게시물은 삭제되지 않습니다. <br>탈퇴 후
									같은 계정으로 재가입 시 포인트는 복원되지 않으며, <br>사용 및 다운로드했던 쿠폰도 사용
									불가능합니다. <br>회원 탈퇴를 진행하시겠습니까?
								</p>
							</li>
							<li>
								<label for="agree">유의사항 동의 </label> 
								<input type="checkbox" name="agree">
							</li>
							<li>
								<label for="pwd">비밀번호확인 : </label> 
								<input type="password" name="pwd">
							</li>
						</ul>
					</fieldset>
					<br>
					<div align="center">
						<input type="button" value="탈퇴하기" onclick="resign_go(this.form)"> 
						&nbsp
						<input type="reset" value="취소">
					</div> 
				</form>
			</div>

		</div>

		<!--===============================================================================  -->

		<%@ include file="../common/footer.jsp"%>
	</section>
</body>
</html>
