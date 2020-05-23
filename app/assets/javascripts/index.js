
function effect(){  
  var element = document.getElementById("head_color"); 
  var colors = gon.product_color; //DBの値を取得
  // データーベースから引っ張ってきたgonの値は、JSNに直す必要がある
  let index = Math.floor(Math.random() * colors.length);
  //colorsに格納された数値をランダムで表示している
  element.style.backgroundColor = colors[index]; 

  
  // var element = document.getElementById("#head-color");
} 
