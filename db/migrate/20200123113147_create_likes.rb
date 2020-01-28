class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :post
      t.references :user
      t.timestamps
    end
    add_column :posts, :likes_count, :integer
  end
end
