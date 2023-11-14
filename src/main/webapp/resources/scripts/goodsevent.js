const goodsBox = document.getElementsByClassName('goods-count-box');
const boxNumber = document.getElementsByClassName('box-number');
const totalPrice = document.getElementsByClassName('total-order');
const cashBox = document.getElementsByClassName('my-result');
const resultPrice = document.getElementsByClassName('result-cost');
const resultPriceBox = document.getElementsByClassName('total-cost');
const deliveryCost = document.getElementsByClassName('delivery-result');
const deliveryCostBox = document.getElementsByClassName('cost-plus');

function add(){
	for (let index = 0; index < goodsBox.length; index++) {
		let countBox = goodsBox[index].children[0];
		const price = goodsBox[index].children[1].children[0];
		addEvent(countBox, price);
	}
}

function minus(){
	for (let index = 0; index < goodsBox.length; index++) {
			let countBox = goodsBox[index].children[0];
			const price = goodsBox[index].children[1].children[0];
			minusEvent(countBox, price);
	}
}

function addEvent(count, price) {
	let countGoods = 1;
	const goodsPrice = [];
	goodsPrice.push(price.textContent);
	count.children[2].addEventListener('click', function(){
		countGoods = count.children[1].textContent;
		countGoods++;
		count.children[1].textContent = countGoods;
		price.textContent = countGoods*goodsPrice[0];
		sumEvent();
		sumResult()
	})
}

function minusEvent(count, price) {
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
		price.textContent = countGoods*goodsPrice[0];
		sumEvent();
		sumResult()
	})
}

function sumEvent(){
	let sum = 0;
	for (let index = 0; index < goodsBox.length; index++) {
		const price = goodsBox[index].children[1].children[0];
		sum += parseInt(price.textContent);
	}
	let total = totalPrice[0];
	let cash  = cashBox[0];
	total.textContent = sum;
	cash.textContent = sum+"원";
}

function sumResult(){
	let sum = 0;
	for (let index = 0; index < goodsBox.length; index++) {
		const price = goodsBox[index].children[1].children[0];
		sum += parseInt(price.textContent);
	}
	let result1 = resultPrice[0];
	let result2 = resultPriceBox[0];
	let delivery1 = deliveryCost[0];
	let delivery2 = deliveryCostBox[0];
	if (sum > 40000) {
		result1.textContent = sum+"원";
		result2.textContent = sum;
		delivery1.textContent = "+"+0+"원";
		delivery2.textContent = 0+"원";
	}
	else{
		result1.textContent = sum+3000+"원";
		result2.textContent = sum+3000;
		delivery1.textContent = "+"+3000+"원";
		delivery2.textContent = 3000+"원";
	}
}

add();
minus();
sumEvent();
sumResult();