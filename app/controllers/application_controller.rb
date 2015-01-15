class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def access_denied(exception)
    redirect_to root_path, :alert => exception.message
  end


  # private
  #
  # def after_sign_out_path_for(resource_or_scope)
  #   # binding.pry
  #   root_path
  # end
end
