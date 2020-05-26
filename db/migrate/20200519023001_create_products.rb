class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :head_color, null: false
      t.string :boy_color, null: false
      t.string :leg_color, null: false
      t.string :shoes_color, null: false
      t.timestamps
    end
  end
end
