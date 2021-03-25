# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  content     :string
#  image       :string
#  question_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Answer < ApplicationRecord
  has_one_attached :image

  belongs_to :user
  belongs_to :question
end
