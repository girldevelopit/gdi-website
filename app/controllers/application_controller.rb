class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def locational
    @location = Location.all
  end

  # def access_denied(exception)
  #   binding.pry
  #   redirect_to admin_path, :alert => exception.message
  # end

end
