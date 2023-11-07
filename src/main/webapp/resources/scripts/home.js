function createCard(index) {
    const card = document.createElement("div");
    card.className = "itemlist4";

    const cardImgBox = document.createElement("div");
    cardImgBox.className = "card-img-box";

    const cardImg = document.createElement("div");
    cardImg.innerHTML = goodslist[index].imgAdress
    cardImg.className = "card-img-top";
    cardImg.querySelector("img").style.width="100%";   
    cardImg.querySelector("img").style.height="100%";  
    const cardImgLink = document.createElement("a");
    cardImgLink.href="goods?goodsId="+goodslist[index].id;
    cardImgLink.appendChild(cardImg);
    cardImgBox.appendChild(cardImgLink);

    const cardImgBag = document.createElement("div");
    cardImgBag.className = "card-img-bag rounded-3";

    const cardImgIcon = document.createElement("span");
    cardImgIcon.className = "card-img-icon material-symbols-outlined";
    cardImgIcon.innerText = "shopping_bag";
    cardImgBag.appendChild(cardImgIcon);

    cardImgBox.appendChild(cardImgBag);
    card.appendChild(cardImgBox);

    const cardBody = document.createElement("div");
    cardBody.className = "card-body";

    const cardText = document.createElement("p");
    cardText.className = "card-text";

    const cardTextTrans = document.createElement("div");
    cardTextTrans.className = "card-text-trans";

    const img1 = document.createElement("img");
    img1.src = "resources/images/em.svg";

    const img2 = document.createElement("img");
    img2.src = "resources/images/ico_crossarrow.svg";
    img2.style.width = "1rem";

    const textNode = document.createTextNode("새벽배송 가능");
    cardTextTrans.appendChild(img1);
    cardTextTrans.appendChild(img2);
    cardTextTrans.appendChild(textNode);

    cardText.appendChild(cardTextTrans);

    const brandText = document.createElement("div");
    const brandTextSpan = document.createElement("span");
    brandTextSpan.className = "text-bold";
    brandTextSpan.innerText = "노브랜드";
    const productOptionText = document.createElement("span");
    productOptionText.innerHTML = goodslist[index].options
    brandText.appendChild(brandTextSpan);
    brandText.appendChild(productOptionText);

    cardText.appendChild(brandText);

    const cardTextPrice = document.createElement("div");
    cardTextPrice.className = "card-text-price";
    cardTextPrice.innerHTML = goodslist[index].price;

    const cardTextWon = document.createElement("span");
    cardTextWon.className = "card-text-won";
    cardTextWon.innerText = "원";
    cardTextPrice.appendChild(cardTextWon);

    cardText.appendChild(cardTextPrice);

    const cardTextScore = document.createElement("div");
    cardTextScore.className = "card-text-score";
    cardTextScore.innerText = "★ 별점";

    cardText.appendChild(cardTextScore);

    cardBody.appendChild(cardText);
    card.appendChild(cardBody);

    return card;
  }

  function createCardAll() {
    const cardContainer = document.getElementById("cardContainer");
    for (let i = 0 ; i < goodslist.length ; i++) {
        cardContainer.appendChild(createCard(i));        
    }    
  }

  createCardAll();