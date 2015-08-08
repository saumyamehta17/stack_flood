class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.references :question, index: true
      t.text :desc

      t.timestamps
    end
  end
end
