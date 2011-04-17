class Product < ActiveRecord::Base
  validates_presence_of :title, :description, :image_url
  validates_numericality_of :price

  protected
  def validate
    errors.add(:price, "は0より大きくなければなりません") unless price.nil? || price > 0.0
  end
end
