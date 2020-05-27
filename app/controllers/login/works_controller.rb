class Login::WorksController < Login::ApplicationController
  before_action :set_work, only: [:edit, :update, :destroy]

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to works_path
    else
      render 'new'
    end
  end

  def new
    @work = Work.new
    @work.director_id = params[:director_id] if params[:director_id].present?
  end

  def edit
  end

  def update
    if @work.update(work_params)
      redirect_to work_path(@work)
    else
      render 'edit'
    end
  end

  def destroy
    @work.destroy
    redirect_to works_path
  end

  def move_higher
    Work.find(params[:id]).move_higher
    redirect_to :action => 'index'
  end

  private
  def set_work
    @work = Work.find(params[:id])
  end

  def work_params
    params[:work].permit(:title, :director_id, :release, :starring, :description, :image, :remove_image, tag_ids: [])
  end

end
