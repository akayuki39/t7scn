class Article < ApplicationRecord
  attr_accessor :default_content
  
  belongs_to :category
  has_many   :histories, dependent: :destroy

  validates :title,             presence: true
  validates :category_id,       presence: true
  # validates :latest_version_id, presence: true

  def content
    latest_version.present? ? latest_version.content : default_content
  end

  def update_comment
  end

  def latest_version
    # @latest_version ||= histories.last
    @latest_version ||= History.where(id: latest_version_id).first
  end

  # def default_content
  #   "在此输入文章内容"
  # end
end
