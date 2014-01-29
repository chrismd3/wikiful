class Category < ActiveRecord::Base
  has_many :article_categories
  has_many :articles, through: :article_categories
  validates :name, presence: true
  
  scope :all_categories, -> { order("name asc") }
end
