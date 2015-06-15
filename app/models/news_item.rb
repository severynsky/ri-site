class NewsItem < ActiveRecord::Base
  belongs_to :category
  has_many :images, as: :imageable

end
