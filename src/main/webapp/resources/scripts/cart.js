const existCart = document.getElementById("exist-cart");
const nullCart = document.getElementById("null-cart");

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