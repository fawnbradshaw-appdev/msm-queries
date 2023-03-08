class MoviesController < ApplicationController
  
  def movies_index
    @list_of_movies = Movie.all

    render({ :template => "movie_template/index.html.erb"})
  end

  def movie_details
    the_id = params.fetch("an_id")

    @the_movie = Movie.where({ :id => the_id}).at(0)
    @the_director = Director.where({ :id => @the_movie.director_id})
   

    render({ :template => "movie_template/show_movies.html.erb"})
  end


end
