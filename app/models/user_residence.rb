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
class UserResidence < ActiveRecord::Base
  belongs_to :user

  validates :country, presence: true, length: { maximum: 255 }
  validates :region, presence: true, length: { maximum: 255 }
  validates :city, presence: true, length: { maximum: 255 }
end
