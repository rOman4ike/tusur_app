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
class User < ActiveRecord::Base
  has_one :user_residence
  has_one :user_photo

  has_many :exams, dependent: :destroy
  has_many :selected_specialty, dependent: :destroy

  accepts_nested_attributes_for :user_residence
  accepts_nested_attributes_for :user_photo

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :firstname, presence: true, length: { maximum: 255 }
  validates :lastname, presence: true, length: { maximum: 255 }
  validates :patronymic, presence: true, length: { maximum: 255 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates :gender, presence: true
  validates :birthday, presence: true
  validates :agreement, acceptance: { accept: true }
end
