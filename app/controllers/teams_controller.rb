class TeamsController < ApplicationController
  
  def index
    @pteams = Team.all
  end

  def show
    @teams = Team.find(params[:id])
  end

  def new
    @teams = Team.new
  end

  def create
    @teams = Team.new(team_params)

    if @teams.save
      redirect_to @team
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @teams = Team.find(params[:id])
  end

  def update
    @teams = Team.find(params[:id])

    if @team.update(team_params)
      redirect_to @team
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def team_params
    params.require(:team).permit(:team, :manager)
  end

end
