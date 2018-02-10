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
    @page = Page.find(params[:page_id])
    @section = Section.find(params[:id])
  end

  def update
    @page = Page.find(params[:page_id])
    @section = Section.find(params[:id])

    if @section.update_attributes(section_params)
      redirect_to admin_subject_page_path(@page.subject, @page), notice: 'Subject successfuly updated!'
    else
      render :edit
    end
  end

  def destroy
    section = Section.find(params[:id])
    page = section.page
    section.destroy
    redirect_to admin_subject_page_path(page.subject, page)
  end

  private

  def section_params
    params.require(:section).permit(:name, :description)
  end
end
