get '/score/:user_id' do
  #¿Qué va en esta parte para obtener la puntuación de cada jugador (submarinos destruidos en cada ronda) y
  #número de juegos ganados?
    @iduser = params[:user_id]
   @user = User.find(params[:user_id])
  p @user
   # @user = current_user.name
   # p @user
   erb :round

end

post '/games' do
  p "uC"
  p params
  #¿Qué va en esta parte para recibir la información del round actual, el score del jugador, el conteo de las
  #oportunidades de cada jugador, así como la sesión actual?
#¿Qué va en esta parte para llevar el registro de las puntuaciones por ronda?
  if params[:score] == "2"
    ganador = "Winner!"
  else
    ganador = "Almost!"
  end
  game = Game.new(user_id: session[:user_id], submarino: params[:score], ganador: ganador)
  game.save!

  #¿Qué va en esta parte para llevar el registro de las puntuaciones por ronda?
  
end

post '/new_game' do
  #¿Qué va en esta parte para redirigir a secret?
   if !current_user.nil?
    redirect '/secret'
  else
    redirect '/'
  end

end
