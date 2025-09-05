class PagesController < ApplicationController
  def index
    if current_user.admin?
      redirect_to "/admin/dashboard"
    end
  end
  private
end
