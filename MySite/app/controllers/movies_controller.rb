# This file is app/controllers/movies_controller.rb

class MoviesController < ApplicationController
  
  def index
    @movies = Movie.order(:title)
  end
  
  def show
    @movie = Movie.find_by_id(params[:id])
  end
  
  def new
    # default: render 'new' template
    @movies = Movie.new 
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
  
  def search_tmdb
    # hardwire to simulate failure
    Tmdb::Api.key 'a39ff553b65193a0084d55309a069293'
    #@movie =  Tmdb::Search.movie(params[:search_terms])
    #flash[:warning] = "'#{params[:search_terms]}' was not found in TMDb"
    #puts @movie
    
    search = Tmdb::Search.new
    search.resource('movie')
    search.query("'#{params[:search_terms]}'")
    result = search.fetch
    #puts result[0]

    if result[0].nil?
      flash[:warning] = "'#{params[:search_terms]}' was not found in TMDb"
    else
      result.each do |each|
        @movie = Movie.create!(title: each['original_title'], rating: 'G', release_date: each['release_date'])
        flash[:warning] = "'#{params[:search_terms]}' was found in TMDb"
      end
    end
    redirect_to movies_path
  end
  
  private
    def movie_params
      params.require(:movie).permit(:title, :rating, :description, :release_date)
    end
    
  
   
end