const existCart = document.getElementById("exist-cart");
const nullCart = document.getElementById("null-cart");
const loginBox = document.getElementsByClassName('login-box');
const allGoods = document.getElementsByClassName('all-goods');
const ordeBtn = document.getElementsByClassName('order-btn');

const cookies = document.cookie;
if(cookies.length === 0){
	existCart.innerHTML = "";
}
else{
	nullCart.innerHTML = "";
}
function login(){
	window.open('/nobrand/login','로그인',width=672,height=480)
}

function isLogin(){
	for (let index = 0; index < 1; index++) {
		if (user == "null") {
			
		}
		else{
			loginBox[0].style.display = "none";
			allGoods[0].style.padding = "0 19px 100px"
		}
	}
}

function notLogin(){
	for (let index = 0; index < 1; index++) {
		ordeBtn[0].addEventListener('click', function(){
			if(user == "null"){
				alert("로그인이 필요합니다.");
				popup = window.open('/nobrand/login','로그인',width=672,height=480);
			}
			else{
				location.href='/nobrand/buy';
			}
		})
	}
}

isLogin();
notLogin();