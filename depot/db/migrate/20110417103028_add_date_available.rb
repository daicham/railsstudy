class AddDateAvailable < ActiveRecord::Migration
  def self.up
    add_column(:products, :date_available, :datetime, :null => false)
  end

  def self.down
    remove_column(:products, :date_available)
  end
end
