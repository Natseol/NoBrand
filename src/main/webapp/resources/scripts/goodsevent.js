const goodsBox = document.getElementsByClassName('goods-count-box');
let count = 0;

console.log(goodsBox);

function add(){
	for(let i =0; i<goodsBox.length; i++){
		let countBox = goodsBox[i].children[0];
		console.log(countBox.children[0])
		countBox.children[0].addEventListener('click', function(){
		count++;
		countBox.children[1].textContent = count;
		console.log(countBox.children[1])
		
		console.log(count);
	})
	}
	
	
}

add();
