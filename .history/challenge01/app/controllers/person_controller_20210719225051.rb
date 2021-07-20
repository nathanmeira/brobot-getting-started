class PersonController < ApplicationController
  def index
    @persons = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    
  end

  def edit
  end

  def full_name
  end

  def imc
  end
end
