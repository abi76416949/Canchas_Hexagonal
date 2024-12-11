class CrearReserva
    def initialize(reserva_repository, cancha_repository)
      @reserva_repository = reserva_repository
      @cancha_repository = cancha_repository
    end
  
    def ejecutar(params)
      # Validamos si la cancha existe
      cancha = @cancha_repository.find_by_id(params[:cancha_id])
      raise "Cancha no encontrada" unless cancha
  
      reserva = Reserva.new(
        id: nil,
        nombre_cliente: params[:nombre_cliente],
        telefono: params[:telefono],
        email: params[:email],
        cancha_id: params[:cancha_id],
        fecha_reserva: params[:fecha_reserva],
        hora_inicio: params[:hora_inicio],
        hora_fin: params[:hora_fin]
      )
  
      @reserva_repository.create(reserva)
    end
  end
  