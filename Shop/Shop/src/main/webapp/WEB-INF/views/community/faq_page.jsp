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

<style type="text/css">
	* {
  box-sizing: border-box;
}

.faq_container h1 {
  margin: 50px 0 30px;
  text-align: center;
}

.faq_container {
  max-width: 600px;
  margin: 0 auto;
}

.faq {
  background-color: transparent;
  border: 1px solid #9fa4a8;
  border-radius: 10px;
  margin: 20px 0;
  padding: 30px;
  position: relative;
  overflow: hidden;
  transition: 0.3s ease;
}

.faq.active {
  background-color: #fff;
}

.faq.active::before,
.faq.active::after {
  content: '\f075';
  font-family: 'Font Awesome 5 Free';
  color: #2ecc71;
  font-size: 7rem;
  position: absolute;
  opacity: 0.2;
  top: 20px;
  left: 20px;
  z-index: 0;
}

.faq.active::before {
  color: #3498db;
  top: -10px;
  left: -30px;
  transform: rotateY(180deg);
}

.faq_title {
  margin: 0 35px 0 0;
}

.faq_text {
  margin: 30px 0 0;
}

.faq.active .faq_text {
  display: block;
}

.faq_toggle {
  background-color: transparent;
  border: 0;
  border-radius: 50%;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 16px;
  padding: 0;
  position: absolute;
  top: 30px;
  right: 30px;
  height: 30px;
  width: 30px;
}

.faq_toggle:focus {
  outline: 0;
}

.faq_toggle .fa-times {
  display: none;
}

.faq.active .faq_toggle .fa-times {
  color: #fff;
  display: block;
}

.faq.active .faq_toggle .fa-chevron-down {
  display: none;
}

.faq.active .faq_toggle {
  background-color: #9fa4a8;
}


</style>
<script type="text/javascript">
/* 
const toggles = document.querySelectorAll(".faq-toggle");
toggles.forEach((toggles) => {
  toggle.addEventListener("onclick", () => {
    toggle.parentNode.classList.toggle("active");
  });
});
 */
</script>
<title>메인</title>
</head>
	<body>
	 <%@ include file="../common/header.jsp" %>
      
	<section>
		<h1>자주 묻는 질문</h1>
		<hr>
		<div class="faq_container">
		
			<details class="faq">
				<summary class="faq_title">자주 묻는 질문 1</summary>
				<div class="faq_text">대답 1</div>
			</details>
			<details class="faq">
				<summary class="faq_title">자주 묻는 질문 2</summary>
				<div class="faq_text">대답 2</div>
			</details>
			<details class="faq">
				<summary class="faq_title">자주 묻는 질문 3</summary>
				<div class="faq_text">대답 3</div>
			</details>
			<details class="faq">
				<summary class="faq_title">자주 묻는 질문 4</summary>
				<div class="faq_text">대답 4</div>
			</details>
			<details class="faq">
				<summary class="faq_title">자주 묻는 질문 5</summary>
				<div class="faq_text">대답 5</div>
			</details>
			<details class="faq">
				<summary class="faq_title">자주 묻는 질문 6</summary>
				<div class="faq_text">대답 6</div>
			</details>
			
		</div>
		<%@ include file="../common/footer.jsp" %>
	</section>
</body>
</html>