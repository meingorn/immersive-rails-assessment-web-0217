class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
    @user = User.new
    @guest = Guest.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def create
    @episode = Episode.new
  end
end
