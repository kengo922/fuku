
function effect() { 
  var element = document.getElementById("target"); 
  var colors = gon.product_color;
    console.log(colors);
    index = Math.floor(Math.random() * colors.length);
    //colorsに格納された数値をランダムで表示している
    // document.bgColor = colors[index];
  element.style.backgroundColor = colors[index]; 
} 
