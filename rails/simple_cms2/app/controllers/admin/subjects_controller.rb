class Admin::SubjectsController < AdminController
  layout 'admin'

  def index
    @subjects = Subject.all.limit(10)
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to admin_subjects_path, notice: "Subject was successfuly created!"
    else
      render 'new'
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(subject_params)
      redirect_to admin_subjects_path, notice: "Subject was successfuly updated!"
    else
      render 'edit'
    end
  end

  def destroy
    subject = Subject.find(params[:id])
    subject.destroy
    redirect_to admin_subjects_path, notice: "Subject #{subject.name} was successfuly deleted!"
  end

  private

  def subject_params
    params.require(:subject).permit(:name)
  end
end
