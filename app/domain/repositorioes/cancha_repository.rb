# domain/repositorios/cancha_repository.rb
module CanchaRepository
  def guardar(cancha)
    raise NotImplementedError
  end

  def buscar_por_id(id)
    raise NotImplementedError
  end

  def listar
    raise NotImplementedError
  end
end

