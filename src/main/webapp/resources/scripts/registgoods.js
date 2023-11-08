function keyEventFunc(e) {
    const validInput = /^[0-9]+$/.test(e.key);
  
    if (!validInput) {
      alert('숫자만 입력 가능합니다.');
      e.preventDefault();
    }
  }