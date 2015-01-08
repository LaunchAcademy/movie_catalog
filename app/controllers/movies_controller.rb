class MoviesController < ApplicationController
  def index
    @movies = Movie.page(params[:page])
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
