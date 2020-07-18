class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    def new
        @movie = Movie.new
    end
    def create
        @movie = Movie.new(movie_params)
        @movie.user_id = current_user.id
      
        url = params[:movie][:url]
        @movie.url = url
        if  @movie.save
            redirect_to movies_path()
        else
            redirect_to new_movie_path()
        end
    end
    def show
        
    end

    def destroy
        Movie.find(params[:id]).destroy
        redirect_to movies_path
    end

    def movie_params
    params.require(:movie).permit(:video, :title, :url) 
    end
end
