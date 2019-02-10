class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  def authenticate_user
    #unless like if !(reverse)current_user inverse de la condition
    if !current_user
      # flash[:danger] = "Please log in."
      redirect_to new_session_path
    end

    #condition ? true : false si la condition est true, ca renvoit true, sinon ca renvoit false
  end
  
end
