class Product < ActiveRecord::Base
  validates_presence_of :title, :description, :image_url
  validates_numericality_of :price
  validates_uniqueness_of :title
  validates_format_of :image_url,
                      :with => %r{^http:.+\.(gif|jpg|png)$}i,
                      :message => "は GIF、JPG、PNG画像のURLでなければなりません"

  def self.salable_items
    find(:all,
         :conditions => "date_available <= now()",
         :order => "date_available desc")
  end

  protected
  def validate
    errors.add(:price, "は0より大きくなければなりません") unless price.nil? || price > 0.0
  end
end
