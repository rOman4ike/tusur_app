# == Schema Information
#
# Table name: specialties
#
#  id         :integer          not null, primary key
#  budget     :boolean
#  specialty  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Specialty < ActiveRecord::Base
  has_many :specialty_subject
  has_one :selected_specialty
end
