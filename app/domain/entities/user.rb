class Usuario
    attr_reader :id, :nombre, :email, :rol
    
    def initialize(id:, nombre:, email:, rol:)
      @id = id
      @nombre = nombre
      @email = email
      @rol = rol
    end
  
    def es_admin?
      @rol == 'admin'
    end
  
    def es_propietario?
      @rol == 'propietario'
    end
  
    
  end
  