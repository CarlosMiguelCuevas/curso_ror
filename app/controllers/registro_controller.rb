class RegistroController < ApplicationController
  def formulario
  	 @titulo = "Registro"


  end

  def procesar
  	#proceso
  	
  	imagen = params[:archivo]
  	nombre_imagen = imagen.original_filename
  	url="#{Rails.root}/app/assets/images/fotos_perfil/"+params[:correo]

  	File.open(url,"wb"){|f| f.write(imagen.read)}

  	redirect_to root_path
  end

end
 