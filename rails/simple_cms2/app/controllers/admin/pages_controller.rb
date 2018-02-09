class Admin::PagesController < ApplicationController
  layout 'admin'

  def index
    @subject = Subject.find(params[:subject_id])
    @pages = @subject.pages
  end

  def new
  end

  def edit
  end
end
