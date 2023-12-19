const goodsBox = document.getElementsByClassName('calculator');
const goodsPriceBox = document.getElementsByClassName('goods-price-box');
const totalPrice = document.getElementsByClassName('total-order');
const totalPriceSecond = document.getElementsByClassName('total-order-second');

function add(){
	let countBox = goodsBox[0].children[0];
	const price = goodsPriceBox[0].children[0];
	addEvent(countBox, price);
}

function discount(){
	let countBox = goodsBox[0].children[0];
	const price = goodsPriceBox[0].children[0];
	discountEvent(countBox, price);
}

function addEvent(count, price) {
	let countGoods = 1;
	const goodsPrice = price.textContent;
	count.children[2].addEventListener('click', function(){
		countGoods = count.children[1].textContent;
		countGoods++;
		count.children[1].textContent = countGoods;
		totalPrice[0].textContent = countGoods*goodsPrice;
		sumEvent();
	})
}

function discountEvent(count, price) {
	let countGoods = 1;
	const goodsPrice = [];
	goodsPrice.push(price.textContent);
	count.children[0].addEventListener('click', function(){
		countGoods = count.children[1].textContent;
		if(countGoods > 1){
			countGoods--;
		}
		else{
			countGoods = 1;
		}
		count.children[1].textContent = countGoods;
		totalPrice[0].textContent = countGoods*goodsPrice[0];
		sumEvent();
	})
}

function sumEvent(){
	let sum = 0;
	for (let index = 0; index < goodsBox[0].children[0].children[1].textContent; index++) {
		const price = goodsPriceBox[0].children[0];
		sum += parseInt(price.textContent);
	}
	let total = totalPrice[0];
	let totlaSecont = totalPriceSecond[0];
	total.textContent = sum;
	totlaSecont.textContent = sum;
}

add();
discount();
sumEvent();