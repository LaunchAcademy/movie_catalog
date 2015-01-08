class MoviesController < ApplicationController
  def index
    if params[:query]
      @movies = Movie.where("title ILIKE ?", "%" + params[:query] + "%")
    else
      @movies = Movie.all
    end

    @movies = @movies.page(params[:page])
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
