class EngenhariasController < ApplicationController
  before_action :set_engenharia, only: [:show, :edit, :update, :destroy]

  # GET /engenharias
  # GET /engenharias.json
  def index
    @engenharias = Engenharia.all
  end

  # GET /engenharias/1
  # GET /engenharias/1.json
  def show
  end

  # GET /engenharias/new
  def new
    @engenharia = Engenharia.new
  end

  # GET /engenharias/1/edit
  def edit
  end

  # POST /engenharias
  # POST /engenharias.json
  def create
    @engenharia = Engenharia.new(engenharia_params)

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

  # PATCH/PUT /engenharias/1
  # PATCH/PUT /engenharias/1.json
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

  # DELETE /engenharias/1
  # DELETE /engenharias/1.json
  def destroy
    @engenharia.destroy
    respond_to do |format|
      format.html { redirect_to engenharias_url, notice: 'Engenharia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engenharia
      @engenharia = Engenharia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def engenharia_params
      params.require(:engenharia).permit(:descricao, :status, :usuario_id)
    end
end
