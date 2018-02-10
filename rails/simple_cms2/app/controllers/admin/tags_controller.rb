class Admin::TagsController < AdminController
  layout 'admin'

  def new
    @subject = Subject.find(params[:subject_id])
    @tag = Tag.new
    @all_tags = Tag.all
  end

  def create
    @tag = Tag.new(tag_params)
    @subject = Subject.find(params[:tag][:subject_id])
    if @tag.save
      redirect_to new_admin_tag_path(subject_id: params[:tag][:subject_id]), notice: 'Tag successfuly created'
    else
      render :new
    end
  end

  def destroy
    tag = Tag.find(params[:id])
    tag.destroy
    redirect_to new_admin_tag_path(subject_id: params[:subject_id]), notice: 'Tag was successfuly deleted!'
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
