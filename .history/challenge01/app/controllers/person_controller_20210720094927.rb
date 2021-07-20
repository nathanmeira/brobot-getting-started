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
    @person = Person.create(person_params)
    @person.save!
    redirect_to person_path(@person)
  end

  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: "Person was successfully created." }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
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
