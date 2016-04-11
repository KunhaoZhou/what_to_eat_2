class HomesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  private
  def authenticate_user!
    redirect_to new_user_session_path unless user_signed_in?
  end
end