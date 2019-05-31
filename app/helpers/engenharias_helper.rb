module EngenhariasHelper
  def processos_options_for_select
    Processo.all.collect { |p| [p.nome, p.id] }
  end
end
