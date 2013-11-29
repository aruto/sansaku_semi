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

def login?
    @current_member.present?
  end

  def admin?
    @current_member.try(:administrator?)
  end

  def login_required
    raise Forbidden unless @current_member
  end

  def admin_login_required
    raise Forbidden unless @current_member.try(:administrator?)
  end
  
    def current_my_map
    if login?
      my_map = MyMap.where(member_id: @current_member.id).order("updated_at DESC").limit(1)[0]
    elsif session[:my_map_id].present?
      my_map = MyMap.where(id: session[:my_map_id]).limit(1)[0]
    end

    unless my_map.present?
      my_map = MyMap.create
      if login?
        my_map.member_id = @current_member.id
      end
      my_map.save()
      session[:my_map_id] = my_map.id
    end
    my_map
  end

end
