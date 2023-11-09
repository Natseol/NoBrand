const allGoodsCount = document.getElementById('goods-count');
const cookieList = [];
const parsingList = [];
let idList = [];

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

function createList(img, name, count){
	const topBox = document.createElement('div');
	topBox.innerHTML = '<div class="goods-box">'
+	'<div class="img-box">'
+			img
+		'<input class="img-check" name="check-box" type="checkbox">'
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
+				count
+				'</div>'
+			'<div class="cost-position">'
+				'<div id="cost">'
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
	document.getElementById('cost').innerHTML = dataPart[0].price * parsingList[0].goodsCount;

	listCount++;
	allGoodsCount.innerHTML = listCount;

	for (let index = 1; index < dataPart.length; index++) {
		if(dataPart[index] !== null){
			inBox = ".goods-list-hidden";
			createList(dataPart[index].name, dataPart[index].imgAddress, parsingList[index].goodsCount);
			document.getElementById('cost').innerHTML = dataPart[index].price * parsingList[index].goodsCount;

			listCount++;
			allGoodsCount.innerHTML = listCount;
		}
	}
})

function getBack() {
	for (let index = 0; index < parsingList.length; index++) {
		const totalgoodsData = {id:parsingList[index].goodsId, count:parsingList[index].goodsCount, price:dataPart[index].price * parsingList[index].goodsCount};
		JSON.stringify(totalgoodsData);
	}
}

fetch("http://localhost/nobrand/buy/buyList", {
	method: "POST",
  headers: {
    "Content-Type": "application/json",
  },
  body: getBack(),
}).then((response) => response.json())