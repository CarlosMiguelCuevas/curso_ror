module HomeHelper
	def enlace nombre, accion
		link_to nombre, accion
	end	

	def menu_navegacion opciones

		html = '<ul class = "nav nav-pills">'
		cont = 1
		opciones.each do |key, val|  
			html += "<li "+ (if cont == 1 then "class = active" else "" end ) +">"+ enlace(key, val) +"</li>"
			cont += 1
		end

		html += '</ul>'

		return html.html_safe
	end

	def seccion titulo, contenido, enlace
		html = '<div class="col-md-4">'
		html += '<h2>'+titulo+'</h2>'
        html += '<p>' + contenido + '</p>'
        html += enlace('mas..', enlace)
      	html += '</div>'

      	html.html_safe

	end

	def hay_banner?
		if content_for?(:imagen) then
			return true
		else
			return false
		end
	end

	def nombre nombre
		/^([a-z]*\s*)*$/.match nombre
	end
end
