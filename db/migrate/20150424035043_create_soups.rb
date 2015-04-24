class CreateSoups < ActiveRecord::Migration
  def change
    create_table :soups do |t|
      t.string :name
      t.string :size
      t.decimal :price

      t.timestamps
    end
  end
end
