class HomeController < ApplicationController
  def index
    @works = Work.all.by_position
    @directors = Director.all.by_id
  end
end
