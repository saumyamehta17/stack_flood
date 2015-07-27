class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :last_edit
      t.string :type
      t.integer :parent_id
      t.text :desc
      t.references :user, index: true
      t.timestamps
    end
  end
end
