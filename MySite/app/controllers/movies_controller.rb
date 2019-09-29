# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def search_tmdb
    # hardwire to simulate failure
    flash[:warning] = "'#{params[:search_terms]}' was not found in TMDb."
    redirect_to movies_path
  end
  
  def index
    @movies = Movie.all
  end
  
  def show
    @movie = Movie.find_by_id(params[:id])
  end
  
  def new
    # default: render 'new' template
  
  end
  
  def create
	  @movie = Movie.create!(movie_params)
	  flash[:notice] = "#{@movie.title} was successfully created."
	  redirect_to movie_path(@movie) 
  end
  
  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end
  
  def destroy
  @movie = Movie.find(params[:id])
  @movie.destroy
  flash[:notice] = "Movie '#{@movie.title}' deleted."
  redirect_to movies_path
  end
  
  private
    def movie_params
      params.require(:movie).permit(:title, :rating, :description, :release_date)
    end
    
  
   
end