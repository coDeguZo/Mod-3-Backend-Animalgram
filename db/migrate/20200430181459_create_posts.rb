class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :location
      t.string :post_text
      t.string :graphic_url

      t.timestamps
    end
  end
end
