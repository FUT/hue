class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  private
  def authenticate_user!
    super unless controller_name == 'pages'
  end
end
