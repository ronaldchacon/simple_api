class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  after_action :set_access_control_headers
  respond_to :json

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://myfrontend.com:3002'
    headers['Access-Control-Request-Method'] = 'GET, OPTIONS, HEAD'
    headers['Access-Control-Allow-Headers'] = 'x-requested-with,Content-Type, Authorization'
  end
end
