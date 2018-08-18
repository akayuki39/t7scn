class Article < ApplicationRecord
  attr_accessor :default_content#, :original_updated_at
  belongs_to :category
  has_many   :histories, dependent: :destroy

  validates :title,             presence: true
  validates :category_id,       presence: true
  # validates :latest_version_id, presence: true
  # validate :handle_conflict,    on: :update

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

  # # 发生改变的是history 所以应该在history上加乐观锁
  # def original_updated_at
  #   @original_updated_at ||= updated_at.to_f
  # end

  # def handle_conflict
  #   # updated_at的时间并不是这次更新的时间，而是数据库中的update_at值。
  #   # 此时还没有update成功，所以这个判断是无效的
  #   if updated_at.to_f > original_updated_at
  #     @conflict = true
  #     @original_updated_at = nil
  #     self.errors.add(:base, "该文章在编辑时已被其他用户修改，请保存您的修改再次尝试")
  #   end
  # end
end
