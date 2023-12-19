<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <link href="resources/css/review.css" rel="stylesheet" type="text/css">
  <div class="review-container">
    <div class="title-goods">리뷰</div>
    <div class="line-bold"></div>
    <div id="review-main">
      <div class="review-box" id="review-box">
        <!-- <div class="d-flex review-title-box">
          <div class="review-star">★<span class="review-star-score">갯수</span></div>
          <div class="review-bar">|</div>
          <div class="review-userId">아이디</div>
        </div>
        <div class="review-content">내용</div>
        <div class="info-line"></div> -->
      </div>
    </div>
    <script>
      console.log(reviews);
      console.log(reviews.length);
      
      let parentElement = document.getElementById("review-main");
      reviews.forEach(review => {

        let reviewBox = document.createElement("div");
        reviewBox.className = "review-box";
        reviewBox.id = "review-box";

        let reviewTitleBox = document.createElement("div");
        reviewTitleBox.className = "d-flex review-title-box";

        let reviewStar = document.createElement("div");
        reviewStar.className = "review-star";
        reviewStar.innerHTML = "★";

        let reviewStarScore = document.createElement("span");
        reviewStarScore.className = "review-star-score";
        reviewStarScore.innerHTML = review.score;

        reviewStar.appendChild(reviewStarScore);

        let reviewBar = document.createElement("div");
        reviewBar.className = "review-bar";
        reviewBar.innerHTML = "|";

        let reviewUserId = document.createElement("div");
        reviewUserId.className = "review-userId";
        reviewUserId.innerHTML = review.userStrId;

        reviewTitleBox.appendChild(reviewStar);
        reviewTitleBox.appendChild(reviewBar);
        reviewTitleBox.appendChild(reviewUserId);

        let reviewContent = document.createElement("div");
        reviewContent.className = "review-content";
        reviewContent.innerHTML = review.content;

        let infoLine = document.createElement("div");
        infoLine.className = "info-line";

        reviewBox.appendChild(reviewTitleBox);
        reviewBox.appendChild(reviewContent);
        reviewBox.appendChild(infoLine);

        parentElement.appendChild(reviewBox);
      });
      

    </script>
  </div>