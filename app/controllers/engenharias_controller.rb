class EngenhariasController < ApplicationController
  before_action :set_engenharia, only: [:show, :edit, :update, :destroy]

  def index
    @engenharias = Engenharia.all
  end

  def show
  end

  def new
    @engenharia = Engenharia.new
  end

  def edit
  end

  def create
    @engenharia = Engenharia.new(engenharia_params)
    @engenharia.usuario = current_usuario

    respond_to do |format|
      if @engenharia.save
        format.html { redirect_to @engenharia, notice: 'Engenharia was successfully created.' }
        format.json { render :show, status: :created, location: @engenharia }
      else
        format.html { render :new }
        format.json { render json: @engenharia.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @engenharia.update(engenharia_params)
        format.html { redirect_to @engenharia, notice: 'Engenharia was successfully updated.' }
        format.json { render :show, status: :ok, location: @engenharia }
      else
        format.html { render :edit }
        format.json { render json: @engenharia.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @engenharia.destroy
    respond_to do |format|
      format.html { redirect_to engenharias_url, notice: 'Engenharia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_engenharia
      @engenharia = Engenharia.find(params[:id])
    end

    def engenharia_params
      params.require(:engenharia).permit(:descricao, :status, :usuario_id)
    end
end
