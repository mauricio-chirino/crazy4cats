class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.string :author_name

      t.timestamps
    end
  end
end
