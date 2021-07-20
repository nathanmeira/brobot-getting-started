class PersonController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    person = Person.create(person_params)

    redirect_to person_path(person)
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    @person.update(person_params)
    redirect_to person_path(@person)
  end

  
  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to person_index_path
  end

  def full_name

  end

  def imc
  end

  private

  def person_params
    params.require(:person).permit(:name, :nickname, :age, :peso, :altura, :last_name)
  end
end

before_action :current_person, only: [:show, :edit, :update, :destroy]

  def index
    @peops = Person.all
  end

  def show

  end

  def new
    @person = Person.new
  end

  def create
    person = Person.create(person_params)

    redirect_to person_path(person)
  end

  def edit

  end

  def update
    @person.update(person_params)

    redirect_to person_path(@person)
  end

  def destroy
    @person.destroy

    redirect_to persons_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :motto)
  end

  def current_person
    @person = Person.find(params[:id])
  end

