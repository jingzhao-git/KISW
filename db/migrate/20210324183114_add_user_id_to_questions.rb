class AddUserIdToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :user_id, :int
  end
end
