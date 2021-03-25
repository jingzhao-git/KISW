class AddCatagoryIdToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :catagory_id, :integer
  end
end
