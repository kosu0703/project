<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/d3367b6d2f.js"></script>
    <%-- <script src="/resources/js/basket.js"></script> --%>
    <link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
    <link href="<c:url value="/resources/css/community_detail_page.css"/>" rel='stylesheet' />
    <title>공통</title>
  </head>
  <body>
 	<%-- 헤더 위치 --%>
  	<%@ include file="../common/header.jsp" %>
  
      <section class="detail">
      <h1>리뷰</h1>
      <hr />
      <form action="">
        <table class="detail_table">
          <tr>
            <td class="detail_table_subject">제품명</td>
            <td>제품명 가져오기</td>
          </tr>
          <tr>
            <td class="detail_table_subject">제목</td>
            <td>제목 내용</td>
          </tr>
          <tr></tr>
          <tr>
            <td class="detail_table_subject">내용</td>
            <td>내용 내용</td>
          </tr>
          <tr>
            <td class="detail_table_subject">이미지</td>
            <td>이미지 있으면 이미지 없으면 없다는 내용</td>
          </tr>
        </table>
        <div class="detail_btn">
          <input type="button" value="수정하기" onclick="review_update_go(this.form)" />
          <input type="button" value="뒤로가기" onclick="back(this.form)" />
        </div>
      </form>
     <%-- 푸터 위치 --%>
      <%@ include file="../common/footer.jsp" %>
    </section>
  </body>
</html>

