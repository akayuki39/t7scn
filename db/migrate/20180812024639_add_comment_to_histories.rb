class AddCommentToHistories < ActiveRecord::Migration[5.0]
  def change
    add_column :histories, :comment, :text
  end
end
