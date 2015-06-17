class NewsItem < ActiveRecord::Base
  belongs_to :category
  has_many :images, as: :imageable, dependent: :destroy

  accepts_nested_attributes_for :images, :reject_if => lambda {|a| a[:picture].blank?}, allow_destroy: true

  # binding.pry
end
