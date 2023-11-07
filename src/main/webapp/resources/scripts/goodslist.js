let parent = document.querySelector('.goods-list');
let numberSet = 0;
let idLength = [];
idLength.length = 5;
let idName = "";
let idImg = "";
let idCount = 0;
const cookieList = [];
const parsingList = [];
let goodsList = [];
let idList = [];



function test(name, img, count){
	const topBox = document.createElement('div');
	topBox.innerHTML = '<div class="goods-box">'
+	'<div class="img-box">'
+		'<img class="goods-img" alt="" src="'
+			img
+		'">'
+		'<input class="img-check" type="checkbox">'
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
+			'<div class="counter">'
+				'<input class="minus" type="button" value="-" oneclick="discount()"/>'
+				'<div id="result" class="count-position">'
+					count
+				'</div>'
+				'<input class="plus" type="button" value="+"/>'
+			'</div>'
+			'<div class="cost-position">'
+				'<div id="cost">'
+				'</div>'
+				'<div class="font-goods-price">원</div>'
+			'</div>'
+		'</div>'
+	'</div>'
+	'<div class="delivery">'
+		'<div class="delivery-text">'
+			'<ul>'
+				'<li class="font-delivery-text">정기배송 가능'
+				'<li class="left-arrow-position"> 청구할인 <img class="left-arrow" alt="" src="resources/images/ico_arrow2.png">'
+			'</ul>'
+		'</div>'
+	'</div>'
+	'<div class="keep-delete">'
+		'<button class="keep">계속담아두기</button>'
+		'<div class="delete-img-box">'
+			'<div class="delete-img">'
+				'<img class="heart-img" alt="" src="resources/images/heart.svg">'
+				'<div class="font-center">|</div>'
+				'<img class="trashcan" alt="" src="resources/images/trashcan.png">'
+			'</div>'
+		'</div>'
+	'</div>'
+'</div>';
	document.querySelector(".goods-list").prepend(topBox);
	numberSet++;
}

function getCookieList(){
	
	for (let index = 0; index < document.cookie.length-1; index++) {
		cookieName = "goodsId"+(index+1);
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

function getCookies(name){
	let value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
    return value? value[2] : null;
}


fetch("http://localhost/nobrand/cart/id", {
  method: "POST",
  headers: {
    "Content-Type": "application/json",
  },
  body: JSON.stringify(
    {id:idList}
  ),
}).then((response) => response.json())
  .then(data => {	
	
})
.catch(error => {
	console.error('Error:', error);
})




// function addList(){
// 	for (let index = 0; index < parsingList.length; index++) {
// 		test(goodsItem.);
// 		document.getElementById("cost").innerHTML = itemParse[index].itemPrice;
// 	}
// }

// addList();