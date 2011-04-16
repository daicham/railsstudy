class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title, :null => false, :limit => 100
      t.text :description, :null => false
      t.string :image_url, :null => false, :limit => 200
      t.decimal :price, :null => false, :precision => 10, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
