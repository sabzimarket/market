class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :desc
      t.decimal :price, :precision => 8, :scale => 2
      t.float :discount

      t.timestamps
    end
  end
end
