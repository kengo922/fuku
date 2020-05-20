class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string  :color_name
      t.string  :color_display
      t.timestamps
    end
  end
end
