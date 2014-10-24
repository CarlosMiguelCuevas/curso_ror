# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#mailer
# Config.action_mailer.delivery_method = :smtp

# Config.action_mailer.smtp_settings = {

# 	:address => "smtp.gmail.com",
# 	:port => 587,
# 	:domain => "gmail.com"
# 	:user_name => "usuario"
# 	:password => "contraseña"
# 	:authentication => "plane"
# 	:enable_starttls_auto => true
# }
# #archivos adjuntos
# ActionMailer::Base.file_settings = {:location => Rails.root.join('tmp/mail')}

# #programa de envios 
# ActionMailer::Base.sendmail_settings = {:location => 'usr/sbin/sendmail'}

# #ignora mensages de error
# Config.action_mailer.raise_delivery_error = true

# Config.action_mailer.perform_deliveries = true