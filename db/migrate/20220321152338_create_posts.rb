class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body

      t.timestamps
    end

    add_reference :posts, :user
    add_foreign_key :posts, :users
  end
end
