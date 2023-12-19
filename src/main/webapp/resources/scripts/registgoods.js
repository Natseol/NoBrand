function keyEventFunc(e) {
    const validInput = /^[0-9]+$/.test(e.key);
  
    if (!validInput) {
      alert('숫자만 입력 가능합니다.');
      e.preventDefault();
    }
  }

function updateOptions() {
  const categorySelect = document.getElementById('registgoods-category');
  const kindSelect = document.getElementById('registgoods-kind');
  
  const selectedCategory = categorySelect.value;
  kindSelect.innerHTML = '';

  if (selectedCategory === '신선식품') {
      const fruitOptions = ['과일채소양곡', '축산수산건식품'];
      fruitOptions.forEach(category => {
          const option = document.createElement('option');
          option.value = category;
          option.textContent = category;
          kindSelect.appendChild(option);
      });
  } else if (selectedCategory === '가공식품') {
      const vegetableOptions = ['과자초콜릿', '라면통조림', '조미료장류', '생수음료', '커피차', '냉동냉장HMR', '유제품'];
      vegetableOptions.forEach(category => {
          const option = document.createElement('option');
          option.value = category;
          option.textContent = category;
          kindSelect.appendChild(option);
      });
  } else if (selectedCategory === '생활용품') {
    const vegetableOptions = ['화장지위생용품', '헤어바디구강용품', '화장품', '세제', '주방용품일회용품', '청소욕실용품'];
    vegetableOptions.forEach(category => {
        const option = document.createElement('option');
        option.value = category;
        option.textContent = category;
        kindSelect.appendChild(option);
    });
  } else if (selectedCategory === '가전인테리어') {
    const vegetableOptions = ['생활디지털가전', '문구완구', '가구홈데코', '조명공구', '침구수예', '자동차용품', '애완'];
    vegetableOptions.forEach(category => {
        const option = document.createElement('option');
        option.value = category;
        option.textContent = category;
        kindSelect.appendChild(option);
    });
  } else if (selectedCategory === '패션잡화') {
    const vegetableOptions = ['잡화'];
    vegetableOptions.forEach(category => {
        const option = document.createElement('option');
        option.value = category;
        option.textContent = category;
        kindSelect.appendChild(option);
    });
  } else if (selectedCategory === '스포츠캠핑용품') {
    const vegetableOptions = ['스포츠캠핑용품'];
    vegetableOptions.forEach(category => {
        const option = document.createElement('option');
        option.value = category;
        option.textContent = category;
        kindSelect.appendChild(option);
    });
  }
}

updateOptions();