class PostgresReservaRepository < ReservaRepository
    def create(reserva)
      # Aquí se crea la reserva utilizando ActiveRecord
      ReservaModel.create!(
        nombre_cliente: reserva.nombre_cliente,
        telefono: reserva.telefono,
        email: reserva.email,
        cancha_id: reserva.cancha_id,
        fecha_reserva: reserva.fecha_reserva,
        hora_inicio: reserva.hora_inicio,
        hora_fin: reserva.hora_fin
      )
    end
  
    def find_by_id(id)
      reserva = ReservaModel.find_by(id: id)
      return nil unless reserva
      Reserva.new(
        id: reserva.id,
        nombre_cliente: reserva.nombre_cliente,
        telefono: reserva.telefono,
        email: reserva.email,
        cancha_id: reserva.cancha_id,
        fecha_reserva: reserva.fecha_reserva,
        hora_inicio: reserva.hora_inicio,
        hora_fin: reserva.hora_fin
      )
    end
  end
  