<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/d3367b6d2f.js"></script>
<script src="/resources/js/order_page.js"></script>
<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<link href="<c:url value="/resources/css/order_page.css"/>"
	rel='stylesheet' />
<title>결제 페이지</title>
</head>
<body>
	<%-- 헤더 위치 --%>
	<%@ include file="../common/header.jsp"%>

	<section class="order_page_section">
		<h1>결제페이지</h1>
		<hr />
		<form method="post">
			<table class="order_table">
				<tr>
					<td>
						<table class="order_porduct_info order_table_detail">
							<thead>
								<tr>
									<th colspan="5">상품 정보</th>
								</tr>
							</thead>
							<tbody>
								<tr class="order_table_detail_tr">
									<td>상품 이름</td>
									<td>상품 수량</td>
									<td>상품 색상</td>
									<td>상품 옵션2</td>
									<td>상품 가격</td>
								</tr>

								<!-- 얘는 db에서 가져와야함 반복문-->
								<tr>
									<td>상품 이름</td>
									<td>수량</td>
									<td>옵션1</td>
									<td>옵션2</td>
									<td>가격</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>

				<tr>
					<td>
						<table class="order_people_info order_table_detail">
							<thead>
								<tr>
									<th colspan="2">수령자 정보 입력</th>
								</tr>
							</thead>
							<tbody>
								<tr style="width: 50px">
									<td>이름</td>
									<td><input type="text" name="receiver_name" value="" /></td>
								</tr>
								<tr>
									<td>연락처</td>
									<td><input type="text" name="receiver_phone" value="" />
										(숫자만 입력해 주세요.)</td>
								</tr>
								<tr>
									<td>이메일</td>
									<td><input type="text" name="receiver_email" value="" />
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>

				<tr>
					<td>
						<table class="order_people_info order_table_detail">
							<thead>
								<tr>
									<th colspan="2">배송지 입력</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>배송지 : <input style="width: 800px" type="text"
										name="receiver_address" value="배송지 테이블에서 가져온 주소" /><input
										type="button" value="배송지 목록에서 변경"
										onclick="
                    delivery_address_change()" />
									</td>
								</tr>
								<!-- 배송지 변경 버튼 클릭시 나타나는 테이블 -->
								<tr>
									<td class="delivery_address_list_wrapper">
										<table>
											<tr>
												<td>기본 배송지</td>
												<td style="width: 800px">기본 배송지 주소</td>
												<td><input type="button" value="배송지 선택"
													onclick="delivery_address_select()" />
												</td>
											</tr>
											<!-- 반복문 -->
											<tr>
												<td>배송지</td>
												<td>배송지 ~~~~~</td>
												<td><input type="button" value="배송지 선택"
													onclick="delivery_address_select()" />
												</td>
											</tr>
											<!-- 반복문 끝 -->

											<tr>
												<td>신규 배송지</td>
												<td><input type="text" name="new_delivery_address"
													style="width: 800px" placeholder="신규 배송지를 입력해 주세요." />
												</td>
												<td><input type="button" value="배송지 추가"
													onclick="delivery_address_add()" />
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>

				<tr>
					<td>
						<table class="order_transaction order_table_detail">
							<tr>
								<th>결제 정보</th>
							</tr>
							<tr>
								<td style="width: 100px; text-align: left; border-right: none">
									보유 포인트 : number1<br /> 총 결제 금액: number2<br /> 결제 후 잔액:
									number1 - number
								</td>
							</tr>
							<tr>
							<tr>
								<th>약관 동의</th>
							</tr>
							<tr>
								<td>결제 약관 내용 ~~~~~~~~~~~~~~~~~~</td>
							</tr>
							<td>결제 약관 동의 <input type="checkbox" name="Payment_Terms"
								required />
							</td>
							</tr>

							<tr>
								<td colspan="2" style="text-align: center"><input
									type="button" value="결제하기"
									style="width: 300px; height: 50px; font-size: 30px; font-weight: bold;"
									onclick="order_submit()" /></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
		<%-- 푸터 위치 --%>
		<%@ include file="../common/footer.jsp"%>
	</section>
</body>
</html>