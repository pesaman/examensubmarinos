get '/records' do
  #¿Qué va en esta parte para obtener la lista de ganadores (juegos ganados)? Ordenados en orden descendente
	
  # users = User.all
  # users.each do |user|
  #  @username = user.name
  #  p @username

  #   user.games.each do |gam|
  #    @gamsubmarino = gam.submarino
  #    p @gamsubmarino
  #     @gamganador = gam.ganador
  #     p @gamganador
  #   end
  # end
  
  erb :record
end

