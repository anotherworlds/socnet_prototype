class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.references :profile, foreign_key: true
      t.references

      t.timestamps
    end
  end
end
