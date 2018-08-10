class RemoveContentAndAddHistoryIdToArticles < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :content, :text
    add_column :articles, :latest_version_id, :integer
  end
end
