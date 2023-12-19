function count(type)  {
	//자동 콤마 찍기
	// 결과를 표시할 element
	const resultElement = document.getElementById('result');
	const costElement = document.getElementById('cost');
	// 현재 화면에 표시된 값
	let number = resultElement.innerText;
	// 더하기/빼기
	if(type === 'plus') {
		number = parseInt(number) + 1;
	}else if(type === 'minus')  {
		if(number < 2){
			number = 1;
		}
		else{
			number = parseInt(number) - 1;
		}
  		
	}
  
	// 결과 출력
	resultElement.innerText = number;
	const cost = number*price;
	const cn1 = cost.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	costElement.innerText = cn1;
	
	let totalPrice = cost;
}


