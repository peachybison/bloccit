<<<<<<< HEAD
# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  title       :string
#  body        :text
#  Question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Answer < ActiveRecord::Base
  belongs_to :Question
=======
class Answer < ActiveRecord::Base
>>>>>>> assignment-24-models
end
