# == Schema Information
#
# Table name: exams
#
#  id         :integer          not null, primary key
#  points     :integer
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_exams_on_user_id  (user_id)
#
class Exam < ActiveRecord::Base
  belongs_to :user

  validates :subject, presence: true
  validates :points, presence: true, numericality: { in: 0..100 }
end
