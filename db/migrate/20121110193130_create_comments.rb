class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.integer :upvote_count
      t.integer :downvote_count
      t.integer :canteen_id

      t.timestamps
    end
  end
end
