class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :desc
      t.references :answer, index: true
      t.timestamps
    end
  end
end
