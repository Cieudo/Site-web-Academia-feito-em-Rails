class ClientePdf < Prawn::Document
  def initialize(clientes)
    super()
    @clientes = clientes
    table_content
  end

  def table_content
    table clientes_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def clientes_rows
    [['Nome', 'Idade', 'Cpf', 'Plano']] +
      @clientes.map do |cliente|
      [cliente.nome, cliente.idade, cliente.cpf, cliente.planos]
    end
  end
end
