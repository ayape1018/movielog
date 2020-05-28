class DirectorsController < ApplicationController
  before_action :set_director, only: [:show]

  def index
    @q = Director.by_id.page(params[:page]).per(6).ransack(params[:q])
    @directors = @q.result(distinct: true)
  end

  def show
  end

  private
  def set_director
    @director = Director.find(params[:id])
  end

end
