class NewsItem < ActiveRecord::Base
  belongs_to :category
  has_many :images, as: :imageable

  accepts_nested_attributes_for :images
end
