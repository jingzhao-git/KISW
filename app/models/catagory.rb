# == Schema Information
#
# Table name: catagories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Catagory < ApplicationRecord
  has_many :questions
end
