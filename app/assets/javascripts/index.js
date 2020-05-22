
function effect() {  
  var element = document.getElementById("target"); 
  var colors = gon.product_color ; //DBの値を取得
  console.log(colors);
  // データーベースから引っ張ってきたgonの値は、JSONに直す必要がある
  let index = Math.floor(Math.random() * colors.length);
    //colorsに格納された数値をランダムで表示している
    // document.bgColor = colors[index];
  element.style.backgroundColor = colors[index]; 
  

} 
