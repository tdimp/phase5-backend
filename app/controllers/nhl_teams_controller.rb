class NhlTeamsController < ApplicationController

  def index
    render json: NhlTeam.all
  end

  def show
    team = NhlTeam.find_by(name: params[:name])
    render json: team
  end
end
