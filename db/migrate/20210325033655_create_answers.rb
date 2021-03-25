class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :content
      t.string :image
      t.integer :question_id
      t.integer :user_id

      t.timestamps
    end
  end
end
