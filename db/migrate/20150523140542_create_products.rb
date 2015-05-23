class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.float :weight
      t.attachment :picture1
      t.attachment :picture2
      t.attachment :picture3

      t.timestamps
    end
  end
end
