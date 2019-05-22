module ProdutosHelper
  def options_for_select
    Engenharia.all.collect { |e| [e.descricao, e.id] }
  end
end
