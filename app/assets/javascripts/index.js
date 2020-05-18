
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
// if (targetNode.style.contains('white') === true) {
//   targetNode.style.remove('white');
// } else {
//   var colors = new Array(
//     "yellow",
//     "red",
//     "blue",
//     "green",
//     "black",
//     "brown",
//     "gray",
//     "orange",
//     "purple",
//     "white");
//     var index = Math.floor(Math.random() * colors.length);
//     targetNode.style.add = colors[index];
//   }
// });
  

      // <p id="target">ここの色が変わります</p>
      // <input type="button" value=" ボタン " onclick="changeColor('target');" />

      // function changeColor(idname){
      //   var obj = document.getElementById(idname);
      //   obj.style.color = '#ffffff';            //文字色を白にする
      //   obj.style.backgroundColor = '#ff0000'; 




    // targetNode.className = 'my-color my-border';
    // targetNode.classList.add('my-color');
    // if (targetNode.classList.contains('my-color') === true) {
    //   targetNode.classList.remove('my-color');
    // } else {
    //   targetNode.classList.add('my-color');
    // }
//     targetNode.classList.toggle('my-color');
//   });
// }
   
   





//     var colors = new Array(
//     "yellow",
//     "red",
//     "blue",
//     "green",
//     "black",
//     "brown",
//     "gray",
//     "orange",
//     "purple",
//     "white");
//     var index = Math.floor(Math.random() * colors.length);
//     document.getElementById("target").style = colors[index];


//document.bgColorは、背景色を設定・参照します。
//この機能は、すでにウェブ標準から削除されています。 将来的にブラウザでサポートされなくなる可能性があるので注意してください。

{/* <img id="image" src="images/1.jpg" alt="" />
    <script language="javascript" type="text/javascript">
    function OnButtonClick() {
     var imglist = new Array(
      "images/1.jpg",
      "images/2.jpg",
      "images/3.jpg",
      "images/4.jpg" );
     var selectnum = Math.floor(Math.random() * imglist.length);
     document.getElementById("image").src = imglist[selectnum];
    </script>
    <input type="button" value="押すと画像が表示されます！" onclick="OnButtonClick();"/> */}