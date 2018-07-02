class Article < ApplicationRecord
  belongs_to :category
  validates :title,    presence: true
  validates :category, presence: true
end
