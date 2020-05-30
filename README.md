
# README
# 概要
自動配色選択コーディネートアプリ、Tetrads(テトラード)を作成しました

## 開発状況
### 開発環境  
  - 開発言語  :  Ruby/Ruby on Railsi 
  - 開発ツール  :  Github/Visual Studio Code  
  - データベース  :  MySQL  
  - 人数  :  1人  

### 開発期間  
  - 開発期間 : 28日間(5/18 ~ 5/29)  
  - 平均作業時間 : 12時間以上/ 1日あたり 


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
