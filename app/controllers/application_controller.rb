class ApplicationController < ActionController::Base
  # deviseコントローラーを使用する際に、パラメータチェックする
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # Path: application_controller.rb
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :address])
  end
end
