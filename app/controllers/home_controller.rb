class HomeController < ApplicationController
  layout 'application.html.erb'
  def index
    @titulo="INICIO"
  end

  def contacto
    @titulo = "CONTACTO"

    #si es por post , o sea si le di enviar
    if request.post?
      #mandar correo electronico
      begin
        if !(nombre(params[:nombre])) then
          flash.now[:noticia] = "formato de nombre erroneo"
        elsif Email.micorreo(params).deliver and Email.enviar(params).deliver then
          flash.now[:noticia] = "Enviado correctamente"
        end  

      rescue
        flash.now[:noticia] = "No enviado"
      end
    end    
  end

  def localizacion
    @titulo = "LOCALIZACION"
  end

  def quienes_somos
    @titulo = "¿QUEIENES SOMOS?"
  end

  def servicios
    @titulo = "SERVICIOS"
  end
end
