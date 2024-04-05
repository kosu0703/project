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
<link href="<c:url value="/resources/css/write_page.css"/>"
	rel='stylesheet' />
<title>공통</title>
</head>
<body>
	<%-- 헤더 위치 --%>
	<%@ include file="../common/header.jsp"%>

	  <section class="write">
      <h1>질문 수정</h1>
      <hr />
      <form action="">
        <table class="write_table">
          <tr>
            <td class="write_table_subject">카테고리</td>
            <td>
              <select name="write_category">
                <option value="옵션1">옵션1</option>
                <option value="옵션2">옵션2</option>
                <option value="옵션3">옵션3</option>
              </select>
            </td>
          </tr>
          <tr>
            <td class="write_table_subject">제목</td>
            <td>
              <input type="text" name="qna_subject" id="" />
            </td>
          </tr>
          <tr></tr>
          <tr>
            <td class="write_table_subject">내용</td>
            <td>
              <textarea name="" id="" cols="100" rows="20" required></textarea>
            </td>
          </tr>
          <tr>
            <td class="write_table_subject">첨부 파일</td>
            <td><input type="file" name="file" /></td>
          </tr>
        </table>
        <div class="write_btn">
          <input type="button" value="수정하기" onclick="qna_update_ok_go()" />
          <input type="reset" value="취소" />
        </div>
      </form>
		<%-- 푸터 위치 --%>
		<%@ include file="../common/footer.jsp"%>
	</section>
</body>
</html>

