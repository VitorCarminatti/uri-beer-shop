module ProcessosHelper
  def status_processo_options_for_select
    Processo.statuses.keys.collect { |status| [t(status, scope: "activerecord.attributes.processo.statuses"), status] }
  end

  def ingredientes_options_for_select
    Ingrediente.all.collect{|e| [e.nome, e.id]}
  end
end
