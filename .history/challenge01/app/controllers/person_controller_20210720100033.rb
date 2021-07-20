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

before_action :current_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = Person.all
  end

  def show

  end

  def new
    @dog = Person.new
  end

  def create
    dog = Person.create(dog_params)

    redirect_to dog_path(dog)
  end

  def edit

  end

  def update
    @dog.update(dog_params)

    redirect_to dog_path(@dog)
  end

  def destroy
    @dog.destroy

    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :motto)
  end

  def current_dog
    @dog = Person.find(params[:id])
  end

