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
    <link href="<c:url value="/resources/css/basket_page.css"/>" rel='stylesheet' />
    <script src="/resources/js/basket.js"></script>
    <title>장바구니</title>
  </head>
  <body>
  	<%@ include file="../common/header.jsp" %>
  
    <section>
      <div class="basket">
        <h1>장바구니</h1>
        <hr />

        <table>
          <thead>
            <tr class="basket_table_head">
              <th><input type="checkbox" name="product_all" /></th>
              <th>상품정보</th>
              <th>수량</th>
              <th>주문 금액</th>
              <th>배송비</th>
            </tr>
          </thead>
          <tbody>
            <!-- 반복문 돌려서 DB에서 데이터 뽑아옴 나중에 수정 -->
            <tr class="basket_table_body">
              <td><input type="checkbox" name="product_one" /></td>
              <td>1</td>
              <td>
                2 <br /><input
                  type="button"
                  value="옵션 변경"
                  onclick="option_change()"
                />
              </td>
              <td>3</td>
              <td>4</td>
            </tr>
            <tr>
              <td>
                <input
                  type="button"
                  value="선택 상품 삭제"
                  onclick="delete_select_product()"
                />
              </td>
            </tr>
          </tbody>
        </table>
        <div class="optchg"><div>옵션 변경 버튼 누르면 열리는 창</div></div>
      </div>
      <%@ include file="../common/footer.jsp" %>
    </section>
  </body>
</html>

