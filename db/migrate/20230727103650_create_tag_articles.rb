class CreateTagArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_articles do |t|
      t.references :articles_id, null: false, foreign_key: true
      t.references :tags_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
