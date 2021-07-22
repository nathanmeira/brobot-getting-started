class RegiaosController < ApplicationController
  before_action :set_regiao, only: [:show, :update, :destroy]

  # GET /regiaos
  def index
    @regiaos = Regiao.all

    render json: @regiaos
  end

  # GET /regiaos/1
  def show
    render json: @regiao
  end

  # POST /regiaos
  def create
    @regiao = Regiao.new(regiao_params)

    if @regiao.save
      render json: @regiao, status: :created, location: @regiao
    else
      render json: @regiao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /regiaos/1
  def update
    if @regiao.update(regiao_params)
      render json: @regiao
    else
      render json: @regiao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /regiaos/1
  def destroy
    @regiao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regiao
      @regiao = Regiao.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def regiao_params
      params.fetch(:regiao, {})
    end
end
