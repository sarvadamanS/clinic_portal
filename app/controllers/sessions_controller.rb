class SessionsController < ApplicationController
  def new
  end

  def create
    Rails.logger.info "Attempting login for email: #{params[:email]}" # Log the attempt

    # Use a safe navigation operator to prevent errors if user is nil
    user = User.find_by(email: params[:email])
    if user
      Rails.logger.info "User found: #{user.email}" # Log if user is found
      if user.authenticate(params[:password])
        Rails.logger.info "Authentication successful for user: #{user.email}" # Log success
        session[:user_id] = user.id
        # Redirect based on user role
        redirect_to user.role == 'receptionist' ? receptionist_dashboard_path : doctors_dashboard_path
      else
        Rails.logger.warn "Authentication failed for user: #{user.email}" # Log for failed auth
        flash.now[:alert] = "Invalid credentials" # Use flash.now for render
        render :new
      end
    else
      Rails.logger.info "No user found with email: #{params[:email]}" # Log if no user found
      flash.now[:alert] = "Invalid email" # Use flash.now for render
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Successfully logged out."
    redirect_to login_path
  end
end
