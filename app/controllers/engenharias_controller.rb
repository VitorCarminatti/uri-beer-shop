class EngenhariasController < ApplicationController
  before_action :set_engenharia, only: [:show, :edit, :update, :destroy, :produzir]

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
        format.html { redirect_to @engenharia, notice: "Engenharia criada com sucesso." }
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
        format.html { redirect_to @engenharia, notice: "Engenharia atualizada com sucesso." }
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
      format.html { redirect_to engenharias_url, notice: "Engenharia excluída com sucesso." }
      format.json { head :no_content }
    end
  end

  def produzir
    if !@engenharia.processos.present?
      redirect_to engenharias_path, notice: 'Engenharia não possui processos para serem finalizados'
    end

    processos = @engenharia.processos
    processos
      .where.not(status: :finalizado)
      .or(processos.where.not(status: :cancelado))
      .each{|e| e.update(status: :finalizado)}

    redirect_to engenharias_path, notice: 'Engenharia produzida com sucesso'
  end

  private

  def set_engenharia
    @engenharia = Engenharia.find(params[:id])
  end

  def engenharia_params
    params.require(:engenharia).permit(:descricao, :usuario_id, :produto_id)
  end
end
