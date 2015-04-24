class CreateAppetizers < ActiveRecord::Migration
  def change
    create_table :appetizers do |t|
      t.string :name
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
