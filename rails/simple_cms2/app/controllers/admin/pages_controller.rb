class Admin::PagesController < ApplicationController
  layout 'admin'

  def index
    @subject = Subject.find(params[:subject_id])
    @pages = @subject.pages
  end

  def new
    @subject = Subject.find(params[:subject_id])
    @page = Page.new
  end

  def create
    @subject = Subject.find(params[:subject_id])
    @page = Page.new(page_params)
    @page.subject = @subject

    if @page.save
      redirect_to admin_subject_pages_path(@subject), notice: "Page (#{@page.name}) successfuly created"
    else
      render 'new'
    end
  end

  def edit
  end

  private

  def page_params
    params.require(:page).permit(:name, :subject_id)
  end
end
