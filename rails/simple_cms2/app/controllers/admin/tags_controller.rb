class Admin::TagsController < ApplicationController
  layout 'admin'

  def new
    @subject = Subject.find(params[:subject_id])
    @tag = Tag.new
  end

  def create
    byebug
    if Tag.create(tag_params)
      redirect_to new_admin_tag_path(subject_id: params[:tag][:subject_id]), notice: 'Tag successfuly created'
    else
      render :new
    end
  end

  def edit
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
