class DirectorsController < ApplicationController
  before_action :set_director, only: [:show]

  def index
    @q = Director.ransack(params[:q])
    @directors = @q.result(distinct: true)
  end

  def show
  end

  private
  def set_director
    @director = Director.find(params[:id])
  end

end
