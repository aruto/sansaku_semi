class ApplicationController < ActionController::Base
  before_action :authorize

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

    def authorize
      @current_member = Member.find_by id: session[:member_id]
      unless @current_member
        redirect_to login_url, notice: "ログインしてください。"
      end
    end
end
