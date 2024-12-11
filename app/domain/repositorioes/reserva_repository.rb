# domain/repositorios/reserva_repository.rb
module ReservaRepository
  def guardar(reserva)
    raise NotImplementedError
  end

  def buscar_por_id(id)
    raise NotImplementedError
  end

  def buscar_por_cliente(cliente_id)
    raise NotImplementedError
  end

  def listar_por_cancha(cancha_id, fecha)
    raise NotImplementedError
  end
end
