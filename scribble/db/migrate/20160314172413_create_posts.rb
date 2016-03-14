class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :tag
      t.string :content
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
