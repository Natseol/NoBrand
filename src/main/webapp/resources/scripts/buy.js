const allGoodsCount = document.getElementById('goods-count');
const buyBtnPush = document.getElementsByClassName('total-price');
const buyPrice = document.getElementsByClassName('buy-price');
const costBox = document.getElementsByClassName('cost');
const moreBtn = document.getElementsByClassName('more-button');
const hiddenBox = document.getElementsByClassName('goods-list-hidden');
const closeBox = document.getElementsByClassName('close-hidden-box');
const checkBox = document.getElementsByClassName('user-input-hidden');
const disign = document.getElementsByClassName('user-input-where');
const loginUser = document.getElementsByClassName('user-info-login');
const deliveyLocation = document.getElementsByClassName('user-info-address');
const userName = document.getElementsByClassName('user-info-name');
const userEmail = document.getElementsByClassName('user-info-email');
const cookieList = [];
const parsingList = [];
const JSONArray = [];
let idList = [];
let totalPrice = 0;

function getGoodsIdFromCookie(cookieString) {
	let jsonString = cookieString.split('=')[1];
  
	try {
	  let cookieObject = JSON.parse(jsonString);
  
	  return cookieObject.goodsId;
	} catch (error) {
	  console.error('Error parsing cookie:', error);
	  return null;
	}
  }
  
  function getGoodsCookies() {
	let allCookies = document.cookie;
  
	let cookiesArray = allCookies.split(';');
  
	let goodsCookies = [];
  
	for (let i = 0; i < cookiesArray.length; i++) {
	  let cookie = cookiesArray[i].trim();
  
	  if (cookie.indexOf('goodsId') === 0) {
		goodsCookies.push(cookie);
	  }
	}
  
	return goodsCookies;
  }

  let goodsCookies = getGoodsCookies();
  
  let goodsIds = goodsCookies.map(getGoodsIdFromCookie);

function getCookies(name){
	let value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
    return value? value[2] : null;
}

function getCookieList(){
	for (let index = 0; index < goodsCookies.length; index++) {
		cookieName = "goodsId" + getGoodsIdFromCookie(goodsCookies[index]);
		cookieList.push(getCookies(cookieName));

		if(cookieList[index] !== null){
			parsingList.push(JSON.parse(cookieList[index]))
		}
		
	}
	for (let index = 0; index < parsingList.length; index++) {
		idList.push(parsingList[index].goodsId);
	}
}
getCookieList();


function createList(img, name, count, price){
	const topBox = document.createElement('div');
	topBox.innerHTML = '<div class="goods-box">'
+	'<div class="img-box">'
+			img
+	'</div>'
+	'<div class="goods-info">'
+		'<div class="mart-name">이마트</div>'
+		'<div class="brand-name">노브랜드</div>'
+		'<div class="goods-name">'
+			name
+		'</div>'
+	'</div>'
+	'<div class="goods-price">'
+		'<div class="goods-count-box">'
+			'<div class="counter-box">'
+				'<div class="counter">'
+					count
+				'</div>'
+				'<div>개</div>'
+			'</div>'
+			'<div class="cost-position">'
+				'<div class="cost">'
+					price
+				'</div>'
+				'<div class="font-goods-price">원</div>'
+			'</div>'
+		'</div>'
+	'</div>'
+'</div>';
	document.querySelector(inBox).prepend(topBox);
}


fetch("http://localhost/nobrand/buy/id", {
  method: "POST",
  headers: {
    "Content-Type": "application/json",
  },
  body: JSON.stringify(
    {id:idList}
  ),
}).then((response) => response.json())
  .then(data => {
	let dataPart = data.goodsObject;
	let listCount = 0;
	inBox = ".goods-list-visible";
	createList(dataPart[0].imgAddress, dataPart[0].name, parsingList[0].goodsCount);
	for (let index = 0; index < 1; index++) {
		costBox[0].innerHTML = dataPart[0].price * parsingList[0].goodsCount;
		totalPrice += (dataPart[0].price * parsingList[0].goodsCount)
		if(totalPrice > 40000){
			buyPrice[0].textContent = totalPrice;
		}
		else{
			buyPrice[0].textContent = totalPrice+3000;
		}
		
	}
	
	JSONArray.push(parsingList[0]);
	listCount++;
	allGoodsCount.innerHTML = listCount;

	for (let index = 1; index < dataPart.length; index++) {
		if(dataPart[index] !== null){
			inBox = ".goods-list-hidden";
			let thisCost = dataPart[index].price * parsingList[index].goodsCount;
			createList(dataPart[index].imgAddress,
				 dataPart[index].name,
				  parsingList[index].goodsCount,
				  thisCost);

			totalPrice += (thisCost)
			if(totalPrice > 40000){
				buyPrice[0].textContent = totalPrice;
			}
			else{
				buyPrice[0].textContent = totalPrice+3000;
			}
			JSONArray.push(parsingList[index]);
			listCount++;
			allGoodsCount.innerHTML = listCount;
		}
	}

	function deleteCookies(){
		for (let index = 0; index < 1; index++) {
			buyBtnPush[0].addEventListener('click', function(){
				for (let index = 0; index < dataPart.length; index++) {
					document.cookie = "goodsId"+ dataPart[index].id + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
				}
			})
		}
	}
	deleteCookies();
})

function getBack() {
	for (let index = 0; index < parsingList.length; index++) {
		const totalgoodsData = {goods:JSONArray};
		return JSON.stringify(totalgoodsData);
	}
}

function buyBtn() {
	for (let index = 0; index < 1; index++) {
		buyBtnPush[0].addEventListener('click', function () {
			if(user == "null"){
				alert("로그인이 필요합니다.");
				popup = window.open('/nobrand/login','로그인',width=672,height=480);
			}
			else{
				fetch("/nobrand/buy/buyList", {
					method: "POST",
					headers: {
					"Content-Type": "application/json",
					},
					body: getBack(),
				}).then((response) => response.json())
				location.href ='/nobrand/';
				alert("상품을 구매하였습니다.");
			}
		})
	}
}

function moreGoods(){
	for (let index = 0; index < 1; index++) {
		moreBtn[0].addEventListener('click', function(){
			hiddenBox[0].style.visibility = "visible";
			moreBtn[0].style.visibility = "hidden";
			closeBox[0].style.visibility = "visible";
		})
	}
}

function closeGoods(){
	for (let index = 0; index < 1; index++) {
		closeBox[0].addEventListener('click', function(){
			hiddenBox[0].style.visibility = "hidden";
			moreBtn[0].style.visibility = "visible";
			closeBox[0].style.visibility = "hidden";
		})
	}
}

function checkUserInput() {
	for (let index = 0; index < 1; index++) {
		if(checkBox[0].checked == true){
			disign[0].style.visibility = "visible";
		}
		else{
			disign[0].style.visibility = "hidden";
		}
	}
}


buyBtn();
moreGoods();
closeGoods();
checkUserInput();