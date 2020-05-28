# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ color_name: 'Star Wars' }, { color_name: 'Lord of the Rings' }])
#   Character.create!(color_name: 'Luke', movie: movies.first)

Color.create!(color_name: "white", color_display: "ホワイト" )
Color.create!(color_name: "gray", color_display: "グレー" )
Color.create!(color_name: "black", color_display: "ブラック" )
Color.create!(color_name: "navy", color_display: "ネイビー" )
Color.create!(color_name: "blue", color_display: "ブルー" )
Color.create!(color_name: "darkgreen", color_display: "ダークグリーン" )
Color.create!(color_name: "green", color_display: "グリーン" )
Color.create!(color_name: "beige", color_display: "ベージュ" )
Color.create!(color_name: "red", color_display: "レッド" )
Color.create!(color_name: "maroon", color_display: "ワインレッド" )
Color.create!(color_name: "yellow", color_display: "イエロー" )
Color.create!(color_name: "orange", color_display: "オレンジ" )



# モデルクラス名.create!(:カラム名1 => 値1, :カラム名2 => 値2, ...)