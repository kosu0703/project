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
    <link href="<c:url value="/resources/css/category_page.css"/>" rel='stylesheet' />
    <title>장바구니</title>
  </head>
<body>
<%@ include file="../common/header.jsp" %>
<section>
      <div class="cartalog_page">
        <div class="model_best_box">
          <div class="model_best_background">
            <div class="model_best_wrapper_item"></div>
            <div class="model_best_wrapper_item2">
              <span class="model_small_box"></span>
              <span class="model_small_box"></span>
              <span class="model_small_box"></span>
              <span class="model_small_box"></span>
              <span class="model_small_box"></span>
              <span class="model_small_box"></span>
            </div>
          </div>
        </div>
        <div class="model_box">
          <div class="model_box_head">
            <span class="item_number" style="cursor: pointer;">12 ITEM</span>
            <input class="select_button" type="button" value="가격높은순" style="cursor: pointer;" />
            <input class="select_button" type="button" value="가격낮은순" style="cursor: pointer;" />
          </div>
          <div class="model_box_body">
            <div class="thumbs_wrapper">
            	<!-- 반복문 -->
              <div class="thumbs_item">
                <img src="/img/worker.png" class="thumbs_img" />
                <div class="thumbs_info">
                  <div class="thumbs_text">
                    <span class="thumbs_title">제목</span>
                    <span class="thumbs_owner">가격</span>
                    <span class="thumbs_point">구매시 <mark>300</mark>p 적립</span>
                  </div>
                  <div class="thumbs_emo_box">
                    <span class="far fa-heart" id="thumbs_emo"></span>
                  </div>
                </div>
              </div>
              
              <div class="thumbs_item">
                <img src="/img/worker.png" class="thumbs_img" />
                <div class="thumbs_info">
                  <div class="thumbs_text">
                    <span class="thumbs_title">남성 워커</span>
                    <span class="thumbs_owner">30,000원</span>
                    <span class="thumbs_point">구매시 <mark>300</mark>p 적립</span>
                  </div>
                  <div class="thumbs_emo_box" >
                    <span class="far fa-heart" id="thumbs_emo"></span>
                  </div>
                </div>
              </div>

              <div class="thumbs_item">
                <img src="/img/worker.png" class="thumbs_img" />
                <div class="thumbs_info">
                  <div class="thumbs_text">
                    <span class="thumbs_title">남성 워커</span>
                    <span class="thumbs_owner">30,000원</span>
                    <span class="thumbs_point">구매시 <mark>300</mark>p 적립</span>
                  </div>
                  <div class="thumbs_emo_box" >
                    <span class="far fa-heart" id="thumbs_emo"></span>
                  </div>
                </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
   	<%@ include file="../common/footer.jsp"%>
    </section>
</body>
</html>