
function effect() { 
  var element = document.getElementById("target"); 
  var colors = gon.product_color;
  colors.map(function( value ) {
    console.log( value );
});
  // var colors = ["yellow" ,"red" ,"blue"];
    console.log(colors);
    index = Math.floor(Math.random() * colors.length);
    console.log(index);
    //colorsに格納された数値をランダムで表示している
    // document.bgColor = colors[index];
  element.style.backgroundColor = colors[index]; 
} 
