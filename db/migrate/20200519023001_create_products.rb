class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :haed_color
      t.string :boy_color
      t.string :leg_color
      t.string :shose_color
      t.timestamps
    end
  end
end
