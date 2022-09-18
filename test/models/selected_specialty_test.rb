# == Schema Information
#
# Table name: selected_specialties
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  specialty_id :integer
#  user_id      :integer
#
# Indexes
#
#  index_selected_specialties_on_specialty_id  (specialty_id)
#  index_selected_specialties_on_user_id       (user_id)
#
require 'test_helper'

class SelectedSpecialtyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
