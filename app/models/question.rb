# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  title       :string
#  text        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  catagory_id :integer
#
class Question < ApplicationRecord
    belongs_to :user
    belongs_to :catagory
    has_many :answers

    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :text, presence: true, length: { minimum: 10, maximum: 300 }
end
