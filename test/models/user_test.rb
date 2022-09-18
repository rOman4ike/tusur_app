# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  agreement  :boolean
#  birthday   :date
#  email      :string
#  firstname  :string
#  gender     :string
#  lastname   :string
#  patronymic :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
