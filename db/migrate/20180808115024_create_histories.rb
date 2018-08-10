class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.text :content
      t.integer :editor_id
      t.integer :article_id

      t.timestamps
    end
  end
end
