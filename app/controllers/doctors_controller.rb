# app/controllers/doctors_controller.rb
class DoctorsController < ApplicationController
  before_action :require_user
  before_action :require_doctor

  def index
    @patients = Patient.all  # Make sure patients are being fetched properly
    @chart_data = Patient.group_by_day(:created_at).count  # Ensure this data is valid
  end

  private

  def require_doctor
    redirect_to root_path unless current_user.doctor?
  end
end
