class ReceptionistsController < ApplicationController
  before_action :require_user
  before_action :check_role

  def index
    # This will automatically render app/views/receptionists/index.html.erb
  end

  private

  def check_role
    redirect_to root_path unless current_user.role == 'receptionist'
  end
end
