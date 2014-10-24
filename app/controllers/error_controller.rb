class ErrorController < ApplicationController
  def rutas
  	render :file => "#{Rails.root}/public/404.html"
  end
end
