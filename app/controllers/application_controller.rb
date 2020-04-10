class ApplicationController < ActionController::Base

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials.basic[:user] && password == Rails.application.credentials.basic[:pass]
    end
  end

end
