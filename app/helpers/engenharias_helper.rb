module EngenhariasHelper
  def processos_options_for_select
    Processo.where(engenharia_id: nil).collect { |p| [p.nome, p.id] } if params[:action] == "new"
    Processo.all.collect { |p| [p.nome, p.id] } if params[:action] == "edit"
  end
end
