class PersonController < ApplicationController
  def index
    @persons = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    person = Person.create(person_params)

    redirect_to persons_path
  end

  def edit
    @person = Person.
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
