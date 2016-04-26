class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?


  # Caroline:
  before_filter :set_global_search_variable

    def set_global_search_variable
      @q = Flare.search(params[:q])
      @flares = @q.result(distinct: true)
    end

  # End.




  protected 
  def after_sign_in_path_for(resource)
    root_path
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username, :first_name, :last_name, :description, :image, :email, :password, :password_confirmation)
    end

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:username, :first_name, :last_name, :description, :profile_pic, :email, :password, :password_confirmation, :current_password)
    end
  end
  

end