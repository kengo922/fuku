{ 
  document.querySelector('button').addEventListener('click', () => {
    const targetNode = document.getElementById('target');


    targetNode.classList.toggle('my-color');
  });
}
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
index = Math.floor(10 * Math.random());
// Math.random()は0 以上 1 未満の範囲内でランダムな浮動小数点を返してくれるのでその値に掛ける10を行います。
//Math.floor() メソッドは、引数として与えた数以下の最大の整数を返します。(整数表示にする)
document.bgColor=colors[index];

var imglist = new Array(
  "flowerA.jpg",
  "flowerB.jpg",
  "flowerC.gif",
  "flowerD.gif" );
var selectnum = Math.floor(Math.random() * imglist.length);
var output = "<img src=" + imglist[selectnum] + ">";
document.write(output);