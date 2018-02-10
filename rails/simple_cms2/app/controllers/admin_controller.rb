class AdminController < ApplicationController
  include ApplicationHelper

  before_action :is_admin?

  private

  def is_admin?
    unless logged_in?
        redirect_to root_path
    end
  end
end