module Admin
  class BaseController < ApplicationController
    include Devise::Controllers::Helpers

    before_action :check_admin

    private

    def check_admin
      if user_signed_in?
        redirect_to pages_path unless current_user.admin?
      end
    end
  end
end
