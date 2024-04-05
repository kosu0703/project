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
<link href="<c:url value="/resources/css/product_detail_page.css"/>"
	rel='stylesheet' />
<title>장바구니</title>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<section>
		<div class="detail_top_wrapper">
			<div class="detail_top_wrapper_left">
				<div class="detail_left_head">
					<img src="/img/worker.png" alt="worker" class="detail_img">
					<div class="detail_subbox">
						<div class="detail_sub_img">
							<p>sub사진</p>
						</div>
						<div class="detail_sub_img">
							<p>sub사진</p>
						</div>
						<div class="detail_sub_img">
							<p>sub사진</p>
						</div>
					</div>
				</div>
			</div>
			<div class="detail_top_wrapper_right">
				<div class="wrapper_right_box">
					<div class="detail_right_head">
						<div class="head_text">
							<span class="text_line"> ------------------------------ </span> <br>
							<span class="text_title"> 남성 패션 워커 </span> <br> <span
								class="text_size"> <mark>250</mark>mm ~ <mark>300</mark>mm
								<strong>까지</strong>
							</span> <br> <span class="text_line">
								------------------------------ </span>
						</div>
					</div>
					<div class="detail_right_body">

						<div class="option_box">
							<div class="option_name_box">상품명</div>
							<input type="text" value="남성 패션 워커" disabled
								class="option_optionbox">
						</div>



						<div class="option_box">
							<div class="option_name_box">판매가</div>
							<input type="text" value="30,000" disabled
								class="option_optionbox">
						</div>



						<div class="option_box">
							<div class="option_name_box">적립포인트</div>
							<input type="text" value="300p" disabled class="option_optionbox">
						</div>



						<div class="option_box">
							<div class="option_name_box">색상</div>
							<select name="" id="" class="option_optionbox">


								<option value="" selected disabled>[필수] 옵션을 선택해 주세요</option>
								<option value="">흰색</option>
								<option value="">검정</option>
							</select>
						</div>
						<div class="option_box">
							<span class="option_name_box">사이즈 </span><select name="" id=""
								class="option_optionbox">
								<option value="" selected disabled>[필수] 옵션을 선택해 주세요></option>
								<option value="">250mm</option>
								<option value="">260mm</option>
								<option value="">270mm</option>
								<option value="">280mm</option>
								<option value="">290mm</option>
								<option value="">300mm</option>

							</select>
						</div>
						<div>최소 주문 수량 1개 이상</div>
						<div style="color: red;">위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.</div>
					</div>
					<div class="detail_right_footer">
						<input type="button" value="바로 구매하기" class="btn1"> <input
							type="button" value="장바구니 담기" class="btn2"> <input
							type="button" value="관심상품등록" class="btn3">
					</div>
				</div>
			</div>
		</div>
		
		<br> <br>
		
		<div class="navigation">
			<span class="navigation_option1"><a href="#section1">상품상세</a></span>
			<span class="navigation_option2"><a href="#section2">구매안내</a></span>
			<span class="navigation_option3"><a href="#section3">상품후기</a></span>
			<span class="navigation_option4"><a href="#section4">상품문의</a></span>
		</div>
		
		<div class="main_detail_background">
			<div class="main_detail_inner">
				<div class="veiw_box">
					<img src="/img/worker.png" alt="" class="main_detail_img"> <br>
					<span class="main_detail_img1_title">MAIN</span>
				</div>

				<br>

				<div class="veiw_box">
					<img src="/img/worker2.png" alt="" class="main_detail_img"> <br>
					<span class="main_detail_img1_title">SUB</span>
				</div>
			</div>
		</div>
		
		<div class="navigation">
			<span class="navigation_option1"><a href="#section1">상품상세</a></span>
			<span class="navigation_option2"><a href="#section2">구매안내</a></span>
			<span class="navigation_option3"><a href="#section3">상품후기</a></span>
			<span class="navigation_option4"><a href="#section4">상품문의</a></span>
		</div>
		
		<div class="information1" id="section2">
			<h3 class="info_title">배송 안내</h3>
			<div class="information1_table">
				<p>당일 구입 시 365일 이내 제품 발송 예정</p>
				<p>해외 물품 구입시 구입 당일 이후 3650일 이내 제품 발송 예정</p>

				<h3>교환 및 반품 안내</h3>
				<p>판매자의 단순 변심 및 예기치 못한 사정으로라도 교환 및 반품은 불가합니다.</p>
			</div>
		</div>

		<br> <br>

		<hr>

		<br> <br>

		<div class="information2">
			<h3 id="section3" class="info_title">상품 후기</h3>
			<div class="information2_table">
				<p>~~~~~~~~~~~~~</p>
				<p>~~~~~~~~~~~~~</p>
				<p>~~~~~~~~~~~~~</p>
				<p>~~~~~~~~~~~~~</p>
				<p>~~~~~~~~~~~~~</p>
			</div>
		</div>

		<br> <br>

		<hr>

		<br> <br>

		<div class="information3">
			<h3 id="section4" class="info_title">상품 문의</h3>
			<div class="information3_table">
				<p>!!!!!!!!!!!!!!</p>
				<p>!!!!!!!!!!!!!!</p>
				<p>!!!!!!!!!!!!!!</p>
				<p>!!!!!!!!!!!!!!</p>
				<p>!!!!!!!!!!!!!!</p>
			</div>
		</div>
	</section>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>