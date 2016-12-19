class PersonsController < ApplicationController
  def index
    @persons = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    @person.save
    redirect_to @person
  end

  private

  def person_params
    params.require(:person).permit(:first_name, :last_name, :birthdate, :status)
  end
end
