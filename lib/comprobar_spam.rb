class InterceptorEmail
	def self.delivering_email mensaje
		if mensaje.subject.include? "gane Dinero!" then
			mensaje.subject = "posible virus - #{mensaje.subject}"
		end
	end
end