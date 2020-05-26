
function effect1(){  
  var element1 = document.getElementById("head_color"); 
  var head_color = gon.head_color; //DBの値を取得
  // データーベースから引っ張ってきたgonの値は、JSNに直す必要がある
  var index1 = Math.floor(Math.random() * head_color.length);  
  //colorsに格納された数値をランダムで表示している
  element1.style.backgroundColor = head_color[index1]; 

  var nodelist1 = document.querySelectorAll (".upper_body");
  var node1 = Array.prototype.slice.call(nodelist1 ,0); 
    //同じクラス名を配列化 
  var boy_color = gon.boy_color; //DBの値を取得 
  var index2 = Math.floor(Math.random() * boy_color.length); 
  node1.forEach(function(elem1){
  //forEachでクラス要素を一つずつ取り出し、値を付与している
  elem1.style.backgroundColor = boy_color[index2]; 
  });

  var nodelist2 = document.querySelectorAll (".leg");
  var node2 = Array.prototype.slice.call(nodelist2 ,0); 
    //同じクラス名を配列化 
  var leg_color = gon.leg_color; //DBの値を取得 
  var index3 = Math.floor(Math.random() * leg_color.length); 
  node2.forEach(function(elem2){
  //forEachでクラス要素を一つずつ取り出し、値を付与している
  elem2.style.backgroundColor = boy_color[index3]; 
  });

  var nodelist3 = document.querySelectorAll (".shoes");
  var node3 = Array.prototype.slice.call(nodelist3 ,0); 
    //同じクラス名を配列化 
  var shoes_color = gon.shoes_color; //DBの値を取得 
  var index4 = Math.floor(Math.random() * shoes_color.length); 
  node3.forEach(function(elem3){
  //forEachでクラス要素を一つずつ取り出し、値を付与している
  elem3.style.backgroundColor = boy_color[index4]; 
  });



};


