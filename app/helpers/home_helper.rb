module HomeHelper
  def engenharias_finalizadas
    total = Engenharia.joins(:processos).where("processos.last = true and processos.status = 1").count

    if total == 0
      "Nenhuma engenharia finalizada"
    elsif total == 1
      "#{total} engenharia finalizada"
    else
      "#{total} engenharias finalizadas"
    end
  end

  def produtos_produzidos
    total = Produto.sum(:quantidade)

    if total == 0
      "Nenhum litro de chopp produzido"
    elsif total == 1
      "#{total} litro de chopp produzido"
    else
      "#{total} litros de chopp produzidos"
    end
  end

  def ingredientes_cadastrados
    total = Ingrediente.count

    if total == 0
      "Nenhum ingrediente cadastrado"
    elsif total == 1
      "#{total} ingrediente cadastrado"
    else
      "#{total} ingredientes cadastrados"
    end
  end
end
