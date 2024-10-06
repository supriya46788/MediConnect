class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  
  validates :name, :phone_number, :specializations, presence: true
end
