class CreaturesController < ApplicationController
  def index
    @creature =Creature.all{ |e| }
  end

  def create
    Tweet.create creature_params
    redirect_to creature_path
  end

  def new
    @creature = Creature.new
  end

  def edit
  end

  def show

  end

  def update
  end

  def destroy
  end

  private
  def creature_params
    params.require(:creature).permit(:name, :description)
  end

end
