require 'sinatra'

class Ensayo
	def mostrarMensaje(mensaje)
		"hola #{mensaje}"
	end
end

get '/hola/:mensaje' do 
	ensayo = Ensayo.new
	msj = params[:mensaje]
	ensayo.mostrarMensaje(msj)
end


