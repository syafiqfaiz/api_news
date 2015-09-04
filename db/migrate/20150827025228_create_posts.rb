class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :link
      t.integer :vote
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
