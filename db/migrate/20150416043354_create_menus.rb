class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :food, :size
      t.decimal :price
      t.timestamps
    end
  end
end
