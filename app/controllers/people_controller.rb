class PeopleController < ApplicationController

  def index
    @people = Person.all

    respond_to do |format|
      format.html
      format.json { render json: @people }
    end
  end

  def new
    @person = Person.new

    respond_to do |format|
      format.html
      format.json { render json: @person }
    end
  end


  def create
    @person = Person.new(person_params)

    @person.save
    redirect_to new_person_path
  end

  private

  def person_params
    params.require(:person).permit(:first_name, :last_name, :pledge_name)
  end
end
