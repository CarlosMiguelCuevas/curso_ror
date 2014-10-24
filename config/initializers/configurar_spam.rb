require 'comprobar_spam'
ActionMailer::Base.register_interceptor(InterceptorEmail)