class Admin::PagesController < ApplicationController
  layout 'admin'

  def index
    @subject = Subject.find(params[:subject_id])
    @pages = @subject.pages
  end

  def show
    @page = Page.find(params[:id])
    @tag  = Tag.new
    @page_tags = @page.tags
    # @tags = Tag.all
    @filtered_tags = Tag.all.select { |tag| !tag.pages.include?(@page) }
    # @tags_options = @page.tags.map { |tag| [tag.name, tag.id]}
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
    @subject = Subject.find(params[:subject_id])
    @page = Page.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:subject_id])
    @page = Page.find(params[:id])

    if @page.update_attributes(page_params)
      redirect_to admin_subject_pages_path(@subject), notice: "Page (#{@page.name}) was successfuly updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @subject = Subject.find(params[:subject_id])
    page = Page.find(params[:id])
    page.destroy
    redirect_to admin_subject_pages_path(@subject), notice: "Page #{page.name} was successfuly deleted!"
  end

  def add_tag
    @subject = Subject.find(params[:subject_id])
    @page = Page.find(params[:id])
    tag = Tag.find(params[:tag][:id])
    @page.tags << tag
    redirect_to admin_subject_page_path(@subject, @page)
  end

  private

  def page_params
    params.require(:page).permit(:name, :subject_id)
  end
end
