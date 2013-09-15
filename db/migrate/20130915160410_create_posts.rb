class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :email
      t.text :raw_content
      t.text :content

      t.timestamps
    end
  end
end
