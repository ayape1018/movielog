class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  def index
    @works = Work.all.by_id
  end

  def show
  end

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

  def destory
    @work.destory
    redirect_to works_path
  end

  private
  def set_work
    @work = Work.find(params[:id])
  end

  def work_params
    params[:work].permit(:title, :director_id, :release, :starring, :description)
  end

end
