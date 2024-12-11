class Cancha
  attr_reader :id, :nombre, :descripcion, :precio_dia, :precio_noche , :polideportivo_id, :texto 

  def initialize(id:, nombre:, descripcion:, precio_dia:, precio_noche:, polideportivo_id:, texto:)
    @id = id
    @nombre = nombre
    @descripcion = descripcion
    @precio_dia = precio_dia
    @precio_noche = precio_noche
    @polideportivo_id = polideportivo_id
    @texto = texto
  end
end
