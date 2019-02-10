class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  def authenticate_user
    #
    if !current_user
      # flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
  
end
