class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :head_color
      t.string :boy_color
      t.string :leg_color
      t.string :shoes_color
      t.timestamps
    end
  end
end
