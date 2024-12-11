class ReservasController < Sinatra::Base
    def initialize
      @reserva_repository = PostgresReservaRepository.new
      @cancha_repository = PostgresCanchaRepository.new
      @crear_reserva = CrearReserva.new(@reserva_repository, @cancha_repository)
    end
  
    post '/reservas' do
      params = {
        nombre_cliente: params[:nombre_cliente],
        telefono: params[:telefono],
        email: params[:email],
        cancha_id: params[:cancha_id],
        fecha_reserva: params[:fecha_reserva],
        hora_inicio: params[:hora_inicio],
        hora_fin: params[:hora_fin]
      }
      
      @crear_reserva.ejecutar(params)
      "Reserva creada con éxito"
    end
  end
  