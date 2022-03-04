class PeopleController < ApplicationController

  def index
    @people = Person.search(params[:search])
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
    #will need to get teams from teams controller, pass teams object to new erb template
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to @person
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def person_params
    params.require(:person).permit(:name, :contact, :team_id, :manager, :ismanagement, :search)
  end

end
