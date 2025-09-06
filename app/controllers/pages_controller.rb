class PagesController < ApplicationController
  def index
  if user_signed_in?
    if current_user.admin?
      redirect_to "/admin/dashboard"
    end
  end
  end
  def new
  end
  private
end
