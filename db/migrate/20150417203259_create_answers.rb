class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.text :body
      t.references :Question, index: true, foreign_key: true
      t.true :index

      t.timestamps null: false
    end
  end
end
