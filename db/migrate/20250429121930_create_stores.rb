class CreateStores < ActiveRecord::Migration[7.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.float :price
      t.string :unit
      t.string :category

      t.timestamps
    end
  end
end
