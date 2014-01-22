class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true
  #validates :categories, presence: true
  validates :content, presence: true
  
  scope :all_articles, -> { order("updated_at desc").limit(25) }
  
end
