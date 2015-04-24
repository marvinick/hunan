class CreateChickens < ActiveRecord::Migration
  def change
    create_table :chickens do |t|
      t.string :name, :size
      t.decimal :price
      t.timestamps
    end
  end
end
