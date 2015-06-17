class Image < ActiveRecord::Base

  before_save :check_img

  belongs_to :imageable, polymorphic: true

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  def check_img
    binding.pry
  end

end
