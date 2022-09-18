# == Schema Information
#
# Table name: user_residences
#
#  id         :integer          not null, primary key
#  city       :string
#  country    :string
#  region     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_user_residences_on_user_id  (user_id)
#
require 'test_helper'

class UserResidenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
