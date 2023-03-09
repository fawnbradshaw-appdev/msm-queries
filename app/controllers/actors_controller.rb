class ActorsController < ApplicationController
  
  def actors_index
    @list_of_actors = Actor.all

    render({ :template => "actor_template/actor_index.html.erb"})
  end

  def actor_details
    the_id = params.fetch("an_id")

    @the_actor = Actor.where({ :id => the_id}).at(0)
    @the_character = Character.where({ :actor_id => the_id})

    render({ :template => "actor_template/show_actors.html.erb"})
  end
end
