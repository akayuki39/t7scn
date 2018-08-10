class History < ApplicationRecord
  belongs_to :article
  # belongs_to :editor

  validates :article_id, presence: true
  # validates :editor_id,  presence: true
end
