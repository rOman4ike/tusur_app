# == Schema Information
#
# Table name: specialty_subjects
#
#  id           :integer          not null, primary key
#  points       :integer
#  subject      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  specialty_id :integer
#
# Indexes
#
#  index_specialty_subjects_on_specialty_id  (specialty_id)
#
class SpecialtySubject < ActiveRecord::Base
  belongs_to :specialty
  belongs_to :user
end
