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
  end

  def edit
  end

  def full_name
  end

  def imc
  end

  private

  def person_params
    params.require File.dirname(__FILE__) + '/../test_helper'
    
    class ModelControllerTest < ActionController::TestCase
      deft
    end
    
  end
end
