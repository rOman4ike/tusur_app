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
class UserPhoto < ActiveRecord::Base
  belongs_to :user

  after_validation :clean_paperclip_errors

  has_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  private 
    def clean_paperclip_errors
      errors.delete(:avatar)
    end
end
