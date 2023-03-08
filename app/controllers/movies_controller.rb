class MoviesController < ApplicationController
  
  def movies_index
    @list_of_movies = Movie.all

    render({ :template => "movie_template/index.html.erb"})
  end

end
