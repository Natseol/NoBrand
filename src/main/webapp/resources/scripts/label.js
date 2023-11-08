const categoryItems = document.querySelectorAll('.category-menu-display');
const categorySubmenu = document.querySelector('.category-submenu');
const categorySubmenuBox = document.querySelector('.category-submenu-box');
let categoryName = [
  [" "],
  [" "],
  ['과일/채소/양곡', '축산/수산/건식품'],
  ['과자/초콜릿','라면/통조림','조미료/장류','생수/음료','커피/차','냉동냉장/HMR','유제품'],
  ['화장지/위생용품','헤어/바디/구강용품','화장품','세제','주방용품/일회용품','청소/욕실용품'],
  ['생활/디지털가전','문구/완구','가구/홈데코','조명/공구','침구/수예','자동차용품','애완'],
  ['잡화'],
  ['스포츠/캠핑용품']
]


categoryItems.forEach(item => {
  item.addEventListener('mouseenter', () => {
    // categoryItems.forEach(otherItem => {
    //   if (otherItem !== item) {
    //     otherItem.style.color = 'gray';
    //   }
    // });

    categorySubmenu.style.display = 'flex';
  });
});

categoryDeliveryBox.addEventListener('mouseleave', () => {
  categorySubmenu.style.display = 'none';
  categoryItems.forEach(item => {
    item.style.color = 'black';    
  });
});

const submenuDropdown = document.querySelectorAll(".submenu-dropdown");
console.log(submenuDropdown);

const categorySubmenu1 = document.getElementById("freshFood");
const Submenu1 = document.getElementById("dropdown1");
categorySubmenu1.addEventListener('mouseenter', () => {
  submenuDropdown.forEach(item => {
    item.style.display = 'none';    
  });
  Submenu1.style.display = 'flex';
});

const categorySubmenu2 = document.getElementById("madeFood");
const Submenu2 = document.getElementById("dropdown2");
categorySubmenu2.addEventListener('mouseenter', () => {
  submenuDropdown.forEach(item => {
    item.style.display = 'none';    
  });
  Submenu2.style.display = 'flex';
});

const categorySubmenu3 = document.getElementById("houseGoods");
const Submenu3 = document.getElementById("dropdown3");
categorySubmenu3.addEventListener('mouseenter', () => {
  submenuDropdown.forEach(item => {
    item.style.display = 'none';    
  });
  Submenu3.style.display = 'flex';
});

const categorySubmenu4 = document.getElementById("interiorGoods");
const Submenu4 = document.getElementById("dropdown4");
categorySubmenu4.addEventListener('mouseenter', () => {
  submenuDropdown.forEach(item => {
    item.style.display = 'none';    
  });
  Submenu4.style.display = 'flex';
});

const categorySubmenu5 = document.getElementById("fashionGoods");
const Submenu5 = document.getElementById("dropdown5");
categorySubmenu5.addEventListener('mouseenter', () => {
  submenuDropdown.forEach(item => {
    item.style.display = 'none';    
  });
  Submenu5.style.display = 'flex';
});

const categorySubmenu6 = document.getElementById("sportsGoods");
const Submenu6 = document.getElementById("dropdown6");
categorySubmenu6.addEventListener('mouseenter', () => {
  submenuDropdown.forEach(item => {
    item.style.display = 'none';    
  });
  Submenu6.style.display = 'flex';
});

const formMenu = document.querySelector('.category-submenu');
formMenu.addEventListener('submit', function(event) {
  event.preventDefault();
  const selectedCategory = this.querySelector('button[name="category"]:checked').value;
  window.location.href = this.getAttribute('action') + '?category=' + selectedCategory;
});

const buttons = document.querySelectorAll('.category-button');
buttons.forEach(button => {
  button.addEventListener('click', function() {
    const selectedCategory = this.value;
    window.location.href = `/nobrand/sub?category=${selectedCategory}`;
  });
});