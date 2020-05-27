class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    @q = @tag.works.by_position.page(params[:page]).per(6).ransack(params[:q])
    @works = @q.result(distinct: true)
    render 'works/index'
  end
end
