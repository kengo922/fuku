
## アプリ名
### 自動配色選択コーディネートアプリ Tetrads(テトラード)

## 制作背景
　服好きの方にとって、自身の持っている服からコーディネートを選ぶのは楽しい時間です。ただ、着用したいアイテムが決まったとしても、配色の組み合わせによって着替えに時間がかかることがあります。今回は、そのような悩みを解決する為、自身の持っている服の配色を登録する事で、ボタン一つでランダムに配色コーディネートを決定してくれるアプリを作成しました。

## 開発状況
### 動作概要  
  - 接続先情報  
  - URL  :  https://kengo-matsuno333.herokuapp.com/

### 開発環境  
  - 開発言語  :  Ruby/Ruby on Railsi 
  - 開発ツール  :  Github/Visual Studio Code/heroku  
  - データベース  :  MySQL  
  - 人数  :  1人  

### 開発期間  
  - 開発期間 : 10日間
  - 平均作業時間 : 12時間以上/ 1日あたり 

### 使用技術
- collection_check_boxesを使用し、4つの部位の配色を登録できるように作成した。
- gem 'gon'を使用し、DBに保存したデータをJS側で使用できるようにした。
- 配色をランダムで切り替えるシステムをJSで作成した。また、ページ更新なしで配色が切り替わるようにした。
- ボディー、レッグ、シューズのviewは細かくパーツを作成した後、組み合わせて作成した。（例：ボディーの場合では、ボディー上部、中部、下部と３分割にして作成）
- ボディー、レッグ、シューズをのviewは分割して作成しているため、JSで色変えする際は工夫する必要がある。まず、各部位毎色を変更する部分のclass名を統一化した。その後、統一したclassを配列化し、foreachを使用して一つずつ取り出し、background-colorを切り替えれるようにした。


## productsテーブル
|Column|Type|Options|
|------|----|-------|
|head_color|string||
|boy_color|string|| 
|leg_color|string|| 
|shoes_color|string|| 

### Association
- has_many :colors
- validates :head_color, presence: true 
- validates :boy_color, presence: true
- validates :leg_color, presence: true
- validates :shoes_color, presence: true


## Commentsテーブル(中間テーブル)
|Column|Type|Options|
|------|----|-------|
|color_name|string||
|color_display|reference|null: false|

### Association
- belongs_to :product, optional: true
