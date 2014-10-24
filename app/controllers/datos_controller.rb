class DatosController < ApplicationController
  layout 'application.html.erb'
  def index
  	@titulo = 'despliegue'
  	@personas = Miembros.regresar

  end

  def proceso
  	
  	nombre = params[:nombre] 
  	edad = params[:edad]
  	nivel = params[:poder]
  	tel = params[:telefono]
  	correo = params[:correo]
  	pass = params[:pass]
  	ec = params[:EC]
  	donador = params[:donador]
  	pais = params[:pais]
  	foto = params[:archivo]
    
  
    begin
     revicion correo, tel   
  	 guardar_datos(nombre, edad, nivel, tel, correo, pass, ec, donador, pais, foto)
     flash[:mensaje] = "incercion realizada con exito"
     
    rescue NoMethodError
      flash[:mensaje] = "falta la foto"

    ensure
      redirect_to :back  
    end	  	
   
	#redirect_to despliegue_path
  	
  end

  def revicion correo, tel 
    c = correo.match /^(\w|\.)+\@([a-z]+)\.([a-z]{2,})$/
    t = tel.match /^\d(\-\d{2}){3}$/

    unless c or t then
      flash[:mensaje1] = "telefono incorrecto" unless t
      flash[:mensaje2] = "correo incorecto" unless c
      

    end 
  end

  def guardar_datos (nombre, edad, nivel, tel, correo, pass, ec, donador, pais, foto)
  
    nombre_foto = foto.original_filename
    persona = {:nombre => nombre,:edad => edad,:nivel => nivel,:tel => tel,:correo => correo,:pass => pass, :ec => ec,  :donador => donador,  :pais => pais,  :foto => nombre_foto}

    Miembros.agregar persona

    
    directorio = "#{Rails.root}/app/assets/images/fotos_perfil/"+nombre_foto

    File.open(directorio,"wb"){|f| f.write(foto.read)}
  
  	


  end

  def llenado
  	@titulo = 'registro'
    if flash[:mensaje] == "incercion realizada con exito" 
      
      redirect_to despliegue_path

     end 
  end
end
