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
require 'test_helper'

class ExamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
