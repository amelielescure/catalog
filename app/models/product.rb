class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :tags, presence: true
  validates :price, presence: true, numericality: {only_float: true}
  validates :weight, presence: true, numericality: {only_float: true}

  has_attached_file :picture1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture1, :content_type => /\Aimage\/.*\Z/
  has_attached_file :picture2, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture2, :content_type => /\Aimage\/.*\Z/
  has_attached_file :picture3, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture3, :content_type => /\Aimage\/.*\Z/
end 
