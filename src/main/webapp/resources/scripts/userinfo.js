const userName = document.getElementById("info-item-name");
userName.innerHTML = userInfo.name + " 님";

const userEmail = document.getElementById("info-item-email");
userEmail.innerHTML = userInfo.emailAddress;

const userPhone = document.getElementById("info-item-phone");
userPhone.innerHTML = userInfo.phoneNumber;

const userAddress = document.getElementById("info-item-address");
userAddress.innerHTML = userInfo.address;

// 구매목록
const infoBuylistContent = document.getElementById("info-buylist-content");
for (let i = 0; i < buyList.length; i++) {
        // <a> 요소 생성
    let anchorElement = document.createElement("a");
    anchorElement.className = "buylist-anchor";

    // <div.buylist-card 요소 생성
    let cardElement = document.createElement("div");
    cardElement.className = "buylist-card";

    // <div.buylist-goods-box 요소 생성
    let goodsBoxElement = document.createElement("div");
    goodsBoxElement.className = "buylist-goods-box";

    // <div.buylist-goods-iamge 요소 생성
    let imageElement = document.createElement("div");
    imageElement.className = "buylist-goods-iamge";
    imageElement.id = "buylist-image";
    imageElement.innerHTML = goodsList[i].imgAddress;
    imageElement.children[0].children[0].style.height="100%";
    imageElement.children[0].children[0].style.width="100%";


    // <div.buylist-goods-info 요소 생성
    let goodsInfoElement = document.createElement("div");
    goodsInfoElement.className = "buylist-goods-info";

    // <div.buylist-goods-nobrand 요소 생성
    let noBrandElement = document.createElement("div");
    noBrandElement.className = "buylist-goods-nobrand";
    noBrandElement.textContent = "노브랜드";

    // <div.buylist-goods-name 요소 생성
    let nameElement = document.createElement("div");
    nameElement.className = "buylist-goods-name";
    nameElement.id = "buylist-name";
    nameElement.textContent = goodsList[i].options;

    // goodsInfoElement에 noBrandElement 및 nameElement 추가
    goodsInfoElement.appendChild(noBrandElement);
    goodsInfoElement.appendChild(nameElement);

    // goodsBoxElement에 imageElement 및 goodsInfoElement 추가
    goodsBoxElement.appendChild(imageElement);
    goodsBoxElement.appendChild(goodsInfoElement);

    // <div.buylist-price-box 요소 생성
    let priceBoxElement = document.createElement("div");
    priceBoxElement.className = "buylist-price-box";

    // <div.buylist-price-info 요소 생성
    let priceInfoElement = document.createElement("div");
    priceInfoElement.className = "buylist-price-info";

    // <div.buylist-goods-price 요소 생성
    let priceElement = document.createElement("div");
    priceElement.className = "buylist-goods-price";
    priceElement.id = "buylist-price";
    priceElement.textContent = buyList[i].price+" 원";

    // <div.buylist-goods-multi 요소 생성
    let multiElement = document.createElement("div");
    multiElement.className = "buylist-goods-multi";
    multiElement.innerHTML = "&nbspX&nbsp";

    // <div.buylist-goods-count 요소 생성
    let countElement = document.createElement("div");
    countElement.className = "buylist-goods-count";
    countElement.id = "buylist-count";
    countElement.textContent = buyList[i].count+" 개";

    // priceInfoElement에 priceElement, multiElement, countElement 추가
    priceInfoElement.appendChild(priceElement);
    priceInfoElement.appendChild(multiElement);
    priceInfoElement.appendChild(countElement);

    // <div.buylist-goods-total-price 요소 생성
    let totalPriceElement = document.createElement("div");
    totalPriceElement.className = "buylist-goods-total-price";
    totalPriceElement.textContent = (buyList[i].price)*(buyList[i].count)+" 원";

    // priceBoxElement에 priceInfoElement 및 totalPriceElement 추가
    priceBoxElement.appendChild(priceInfoElement);
    priceBoxElement.appendChild(totalPriceElement);

    // <div.buylist-date-box 요소 생성
    let dateBoxElement = document.createElement("div");
    dateBoxElement.className = "buylist-date-box";

    // <div.buylist-goods-date-title 요소 생성
    let dateTitleElement = document.createElement("div");
    dateTitleElement.className = "buylist-goods-date-title";
    dateTitleElement.textContent = "구매날짜";

    // <div.buylist-goods-date 요소 생성
    let dateElement = document.createElement("div");
    dateElement.className = "buylist-goods-date";
    dateElement.id = "buylist-date";
    dateElement.textContent = buyList[i].createAt;

    // dateBoxElement에 dateTitleElement 및 dateElement 추가
    dateBoxElement.appendChild(dateTitleElement);
    dateBoxElement.appendChild(dateElement);

    // cardElement에 goodsBoxElement, priceBoxElement, dateBoxElement 추가
    cardElement.appendChild(goodsBoxElement);
    cardElement.appendChild(priceBoxElement);
    cardElement.appendChild(dateBoxElement);

    // anchorElement에 cardElement 추가
    anchorElement.appendChild(cardElement);

    // 문서의 body에 anchorElement 추가
    infoBuylistContent.appendChild(anchorElement);    
}
