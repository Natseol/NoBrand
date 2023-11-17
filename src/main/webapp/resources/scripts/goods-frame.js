const imgFrame = document.getElementsByClassName('img-frame');
const thisGoodsBox = document.getElementsByClassName('calculator');
const categoryTop = document.getElementsByClassName('category-top');
const categoryBottom = document.getElementsByClassName('category-boottom');
const goodsKind = document.getElementsByClassName('goods-kind');
const goodsName = document.getElementsByClassName('goods-name');
const goodsNameInfo = document.getElementsByClassName('goods-name-info');
const goodsPrice = document.getElementsByClassName('goods-price');
const goodsMade = document.getElementsByClassName('goods-made');
const totalOrder = document.getElementsByClassName('total-order');
const totalOrderSecond = document.getElementsByClassName('total-order-second');
const contentElem = document.getElementsByClassName('goods-img-box-content');
const goodsBoxElem = document.getElementsByClassName('calculator');
const goCartBtn = document.getElementsByClassName('cart-btn');
const goBuyBtn = document.getElementsByClassName('buy-btn');
const goCart = document.getElementsByClassName('go-cart');
const goBuy = document.getElementsByClassName('go-buy');
const deletButton = document.getElementById('delete-goods');
let popup;



function getParameter(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function createCookie( goodsIdJ, exdays){
    let d = new Date();
    let goodsCountJ = goodsBoxElem[0].children[0].children[1].textContent;
    d.setTime(d.getTime() + (exdays*24*60*60*1000));

    let expires = "expires="+d.toUTCString();

    let cookieContent = {goodsId:goodsIdJ, goodsCount:goodsCountJ};

    if(goodsData.goodsCount !== 0){
        document.cookie = "goodsId"+ goodsIdJ + "=" + JSON.stringify(cookieContent); + "; " + expires;
        alert("상품을 장바구니에 담았습니다.");
    }
    else{
        alert("상품이 준비되지 않았습니다.");
    }
    
}

function createCookieBuy( goodsIdJ, exdays){
    let d = new Date();
    let goodsCountJ = goodsBoxElem[0].children[0].children[1].textContent;
    d.setTime(d.getTime() + (exdays*24*60*60*1000));

    let expires = "expires="+d.toUTCString();

    let cookieContent = {goodsId:goodsIdJ, goodsCount:goodsCountJ};

    document.cookie = "goodsId"+ goodsIdJ + "=" + JSON.stringify(cookieContent); + "; " + expires;
    alert("구매페이지로 이동합니다.");
}

function dataInput({topKind, bottomKind, imgAddress ,name, price, info, content}){
    categoryTop[0].innerHTML = topKind;
    categoryBottom[0].innerHTML = bottomKind;
    imgFrame[0].innerHTML = imgAddress;
    goodsName[0].innerHTML = name;
    goodsNameInfo[0].innerHTML = name;
    goodsPrice[0].innerHTML = price;
    totalOrder[0].innerHTML = price;
    totalOrderSecond[0].innerHTML = price;
    goodsMade[0].innerHTML = info;
    contentElem[0].innerHTML = content;
    goodsKind[0].innerHTML = bottomKind;
}


if(user == "admin"){
    deletButton.style.display = 'block';
    deletButton.style.background = 'white';
    deletButton.style.border = '1px solid #e0dbdb';
    deletButton.style.fontSize = '12px';
    deletButton.style.padding = '5px 10px';
    deletButton.style.marginLeft = '10px';
}
else{
    deletButton.style.display = 'none';
}


function goodsDeleteBtn(){
    document.getElementById("deleteForm").addEventListener("submit", function (event) {
        event.preventDefault();
        fetch("/nobrand/goodsDelete", {
            method: "POST",
            headers: {
            "Content-Type": "application/json",
            },
            body: JSON.stringify({id:goodsData.id}),
        }).then((response) => response.json())
    })  
}

function goCartEvent(){
    for (let index = 0; index < 1; index++) {
        goCart[0].style.visibility = 'hidden';
        goCartBtn[0].addEventListener('mousemove', function(){
            goCart[0].style.visibility = 'visible';
        })
        goCart[0].addEventListener('mouseover', function(){
            goCart[0].style.visibility = 'visible';
        })
        goCart[0].addEventListener('mouseout', function(){
            goCart[0].style.visibility = 'hidden';
        })
        goCartBtn[0].addEventListener('mouseout', function(){
            goCart[0].style.visibility = 'hidden';
        })
    }
    
}

function notEnoughCart(){
    for (let index = 0; index < 1; index++) {
        goCartBtn[0].addEventListener('click', function(){
            if(goodsData.goodsCount < thisGoodsBox[0].children[0].children[1].textContent){
                alert("남은 상품 수량보다 많습니다.")
            }
            else{
                createCookie(goodsData.id, 30);
            }
        })
    }
}

function notEnoughBuy(){
    for (let index = 0; index < 1; index++) {
        goBuyBtn[0].addEventListener('click', function(){
            if(goodsData.goodsCount < thisGoodsBox[0].children[0].children[1].textContent){
                alert("남은 상품 수량보다 많습니다.")
            }
            else{
                notLoginBuyBtn(user)
            }
        })
    }
}


function ifSoldOut(){
    if(goodsData.goodsCount === 0){
        for (let index = 0; index < 1; index++) {
            goBuyBtn[0].innerHTML = "상품페이지로 이동";
            goCartBtn[0].innerHTML = "매진";
        }
       
    }
}



function notLoginBuyBtn(userId) {
    for (let index = 0; index < 1; index++) {
        if(userId == "null"){
            alert("로그인이 필요합니다.");
            popup = window.open('/nobrand/login','로그인',width=672,height=480);
        }
        else{
            createCookieBuy(goodsData.id, 30);
            location.href='/nobrand/buy';
        }
    }
}

function topCategoriClick() {
    for (let index = 0; index < 1; index++) {
        categoryTop[0].addEventListener('click', function(){
            location.href="sub?category="+goodsData.topKind;
        })
    } 
}

function bottomCategoriClick() {
    for (let index = 0; index < 1; index++) {
        categoryBottom[0].addEventListener('click', function(){
            location.href="sub?kind="+goodsData.bottomKind;
        })
    } 
}


goodsDeleteBtn();
dataInput(goodsData);
goCartEvent();
ifSoldOut();
topCategoriClick();
bottomCategoriClick();
notEnoughCart();
notEnoughBuy();