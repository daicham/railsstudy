class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.integer :product_id, :null => false
      t.integer :quantity, :null => false
      t.decimal :unit_price, :null => false, :precision => 10, :scale => 2

      t.timestamps
    end
    execute('ALTER TABLE line_items ADD CONSTRAINT fk_line_items_product FOREIGN KEY ( product_id ) REFERENCES products( id ) ')
  end

  def self.down
    drop_table :line_items
  end
end
