class Article < ApplicationRecord
  belongs_to :user
  has_many :tag_articles, dependent: :destroy
  has_many :tags, through: :tag_articles
  with_options presence: true do
    validates :title
    validates :content
  end
end
