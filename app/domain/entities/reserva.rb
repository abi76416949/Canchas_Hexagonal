class Reserva
    attr_reader :id, :nombre_cliente, :telefono, :email, :cancha_id, :fecha_reserva, :hora_inicio, :hora_fin
    
    def initialize(id:, nombre:, telefono:,  email:, cancha_id:, fecha_reserva:, hora_inicio:, hora_fin:)
      @id = id
      @nombre_cliente = nombre
      @telefono = telefono
      @email = email
      @cancha_id = cancha_id
      @fecha_reserva = fecha_reserva
      @hora_inicio = hora_inicio
      @hora_fin = hora_fin

      def duracion
        (hora_fin - hora_inicio) / 3600 # Duración en horas
      end
    
      def costo
        duracion * cancha.precio_por_hora
      end



    end
  end
  