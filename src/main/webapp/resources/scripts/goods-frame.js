const imgFrame = document.getElementsByClassName('img-frame');
const goodsName = document.getElementsByClassName('goods-name');
const goodsNameInfo = document.getElementsByClassName('goods-name-info');
const goodsPrice = document.getElementsByClassName('goods-price');
const standardPrice = document.getElementsByClassName('standard-price');
const totalVolum = document.getElementsByClassName('total-volum');
const goodsMade = document.getElementsByClassName('goods-made');

let cookies = [];

function dataInput(img ,name, nameInfo, price, standard, volum, made){
    imgFrame[0].innerHTML = img;
    goodsName[0].innerHTML = name;
    goodsNameInfo[0].innerHTML = nameInfo;
    goodsPrice[0].innerHTML = price;
    standardPrice[0].innerHTML = standard;
    totalVolum[0].innerHTML = volum;
    goodsMade[0].innerHTML = made;
}

for (let index = 0; index < cookies.length; index++) {
    dataInput(cookies[index].name,
        cookies[index].img,
        cookies[index].name,
        cookies[index].nameInfo,
        cookies[index].price,
        cookies[index].standard,
        cookies[index].volum,
        cookies[index].made
        );
}