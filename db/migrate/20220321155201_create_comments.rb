class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :body

      t.timestamps
    end

    add_reference :comments, :user
    add_foreign_key :comments, :users

    add_reference :comments, :post
    add_foreign_key :comments, :posts
  end
end
