# == Schema Information
#
# Table name: user_photos
#
#  id                  :integer          not null, primary key
#  avatar_content_type :string
#  avatar_file_name    :string
#  avatar_file_size    :bigint
#  avatar_updated_at   :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#
# Indexes
#
#  index_user_photos_on_user_id  (user_id)
#
require 'test_helper'

class UserPhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
