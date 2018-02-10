class Admin::SectionsController < ApplicationController
  layout 'admin'

  def new
    @page = Page.find(params[:page_id])
    @section = Section.new
  end

  def create
    @page = Page.find(params[:page_id])
    @section = Section.new(section_params)
    @section.page = @page

    if @section.save
      redirect_to admin_subject_page_path(@page.subject, @page), notice: "Section (#{@section.name} successfuly created"
    else
      render 'new'
    end
  end

  def edit
  end

  private

  def section_params
    params.require(:section).permit(:name, :description)
  end
end
