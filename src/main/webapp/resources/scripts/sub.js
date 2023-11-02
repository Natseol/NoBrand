const menuItems = document.querySelectorAll('.menu-item');

menuItems.forEach(item => {
  item.addEventListener('click', () => {
    // 현재 클릭한 메뉴 아이템에 대한 드롭다운 토글
    item.classList.toggle('active');
    
    // 다른 메뉴 아이템은 닫기
    menuItems.forEach(otherItem => {
      if (otherItem !== item) {
        otherItem.classList.remove('active');
      }
    });
  });
});