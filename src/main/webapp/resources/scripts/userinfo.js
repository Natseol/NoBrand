console.log(userInfo);

const userName = document.getElementById("info-item-name");
userName.innerHTML = userInfo.name + " 님";

const userEmail = document.getElementById("info-item-email");
userEmail.innerHTML = userInfo.emailAddress;

const userPhone = document.getElementById("info-item-phone");
userPhone.innerHTML = userInfo.phoneNumber;

const userAddress = document.getElementById("info-item-address");
userAddress.innerHTML = userInfo.address;
