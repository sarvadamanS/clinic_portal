# app/models/patient.rb
class Patient < ApplicationRecord
    validates :first_name, :last_name, :dob, :address, :phone, :email, presence: true
  end
  