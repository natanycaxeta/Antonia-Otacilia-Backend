class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :description
      t.integer :likes
      t.string :address
      t.string :tipo

      t.timestamps
    end
  end
end
