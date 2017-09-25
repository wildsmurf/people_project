class PeopleController < ApplicationController

before_action :set_person, only: [:show, :update, :edit, :destroy]

  def index
    @people = Person.all
  end

  def show
    @full_name = @person.full_name
    @description = @person.description
  end

  def new
    @person = Person.new
    render partial: "form"
  end

  def create
    person = Person.new(person_params)
    if person.save
      redirect_to person_path(person)
    else
      render partial: "form"
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @person.update(person_params)
      redirect_to person_path(@person)
    else
      render partial: "form"
    end
  end

  def destroy
    @person.destroy
    redirect_to people_path
  end

private
  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender)
  end

end
