var loginPopupbtn=document.getElementById("login-box");
loginPopupbtn.onclick=function(){
	window.open('/nobrand/login','로그인',width=768,height=526)
	}
var regitPopupbtn=document.getElementById("regit-box");
regitPopupbtn.onclick=function(){
	window.location.href='/nobrand/regist';
}