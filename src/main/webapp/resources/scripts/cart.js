const existCart = document.getElementById("exist-cart");
const nullCart = document.getElementById("null-cart");

const cookies = document.cookie;
console.log(cookies);
console.log(cookies.length);
if(cookies.length === 0){
	existCart.innerHTML = "";
}
else{
	nullCart.innerHTML = "";
}