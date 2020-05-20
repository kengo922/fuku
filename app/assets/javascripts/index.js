
function effect() { 
  var element = document.getElementById("target"); 
  colors=new Array(10);
    colors[0]="yellow";
    colors[1]="red";
    colors[2]="blue";
    colors[3]="green";
    colors[4]="black";
    colors[5]="brown";
    colors[6]="gray";
    colors[7]="orange";
    colors[8]="purple";
    colors[9]="white";
    index=Math.floor(10*Math.random());
    document.bgColor = colors[index];
  element.style.backgroundColor = colors[index]; 
} 
