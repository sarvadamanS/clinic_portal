class PatientsController < ApplicationController
  before_action :require_user
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      Rails.logger.info "Patient created: #{@patient.inspect}"  # Log created patient details
      redirect_to @patient, notice: "Patient successfully created."
    else
      Rails.logger.info "Failed to create patient: #{@patient.errors.full_messages.join(", ")}"  # Log errors if any
      render :new
    end
  end

  def edit
  end

  def update
    if @patient.update(patient_params)
      redirect_to @patient, notice: "Patient successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @patient.destroy
    redirect_to patients_path, notice: "Patient successfully deleted."
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :dob, :address, :phone, :email)
  end
end
