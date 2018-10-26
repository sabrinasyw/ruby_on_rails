class PokemonsController < ApplicationController
  # validates :name, uniqueness: true

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update(trainer: current_trainer)
    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    if @pokemon.health <= 10
        @pokemon.destroy
    else
        @pokemon.update(health: @pokemon.health - 10)
    end
    redirect_to trainer_path(current_trainer.id)
  end

  def heal
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update(health: @pokemon.health + 10)
    redirect_to trainer_path(current_trainer.id)
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer_id = current_trainer.id
    if @pokemon.save == true
      redirect_to trainer_path(current_trainer.id)
    else
      redirect_to new_path
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
  end

  def new
  end

  private
    # Using a private method to encapsulate the permissible parameters
    # is just a good pattern since you'll be able to reuse the same
    # permit list between create and update. Also, you can specialize
    # this method with per-user checking of permissible attributes.
    def pokemon_params
      params.permit(:name, :ndex)
    end

end
