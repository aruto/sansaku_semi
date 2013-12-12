class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
    member = Member.find_by user: params[:user]
    if member and member.authenticate(params[:password])
      session[:member_id] = member.id
      redirect_to root_url
    else
      redirect_to login_url, alert: "無効なユーザー/パスワードの組み合わせです。"
    end
  end

  def destroy
    session[:member_id] = nil
    redirect_to root_url, notice: "ログアウトしました。"
  end
end
