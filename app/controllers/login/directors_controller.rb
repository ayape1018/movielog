class Login::DirectorsController < Login::ApplicationController
  before_action :set_director, only: [:edit, :update, :destroy]

  def create
    @director = Director.new(director_params)
    if @director.save
      redirect_to directors_path
    else
      render 'new'
    end
  end

  def new
    @director = Director.new
  end

  def edit
  end

  def update
    if @director.update(director_params)
      redirect_to director_path(@director)
    else
      render 'edit'
    end
  end

  def destroy
    @director.destroy
    redirect_to directors_path
  end

  private
  def set_director
    @director = Director.find(params[:id])
  end

  def director_params
    params[:director].permit(:name, :birthplace, :description, :image, :remove_image)
  end

end
