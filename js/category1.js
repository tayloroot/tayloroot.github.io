document.addEventListener('DOMContentLoaded', function() {  
  const categories = document.querySelectorAll('.category-list-item');  
  
  categories.forEach(category => {  
    const childList = category.querySelector('ul');  
    if (childList) {  
      // 创建一个折叠/展开按钮  
      const toggleButton = document.createElement('span');  
      toggleButton.innerHTML = '▶';  
      toggleButton.className = 'category-toggle';  
      category.insertBefore(toggleButton, childList);  

      // 默认折叠子目录  
      childList.style.display = 'none';  

      // 添加点击事件  
      toggleButton.addEventListener('click', function() {  
        if (childList.style.display === 'none') {  
          childList.style.display = 'block';  
          toggleButton.innerHTML = '▼';  
        } else {  
          childList.style.display = 'none';  
          toggleButton.innerHTML = '▶';  
        }  
      });  
    }  
  });  
});  