module ProdutosHelper
  def engenharias_options_for_select
    Engenharia.all.collect { |e| [e.descricao, e.id] }
  end
end
