const goodsBox = document.getElementsByClassName('goods-count-box');
const boxNumber = document.getElementsByClassName('box-number');

function add(){
	for (let index = 0; index < goodsBox.length; index++) {
		let countBox = goodsBox[index].children[0];
		addEvent(countBox);
	}
}

function addEvent(count) {
	let countGoods = 1;
	count.children[2].addEventListener('click', function(){
		countGoods++;
		count.children[1].textContent = countGoods;
	})
}

function discount(){
	for (let index = 0; index < goodsBox.length; index++) {
			let countBox = goodsBox[index].children[0];
			discountEvent(countBox);
	}
}

function discountEvent(count) {
	let countGoods = 1;
	count.children[0].addEventListener('click', function(){
		countGoods = count.children[1].textContent;
		if(countGoods > 1){
			countGoods--;
		}
		else{
			countGoods = 1;
		}
		count.children[1].textContent = countGoods;
	})
}

add();
discount();
