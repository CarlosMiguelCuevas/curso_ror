class Email < ActionMailer::Base
  default from: "ruby@rails.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.micorreo.subject
  #
  def micorreo parametros
    enviar_correo parametros,"carlos.cuevas.ochoa@gmail.com","nuevo mensaje - "+parametros[:asunto]
  end

  def enviar parametros
    enviar_correo parametros, parametros[:email], "Gracias por contactar con S.P."
  end 

  private
    def enviar_correo parametros, email, asunto
      @nombre =parametros[:nombre]
      @email = parametros[:email]
      @asunto = parametros[:asunto]
      @mensaje = parametros[:mensaje]

      mail :to =>  email, :subject => asunto

    end 
end
