# GETS ============================================

get '/signin' do
	erb :signin
end

get '/logout' do
  #¿Qué va en esta parte para cerrar la sesión?
	 session.clear
  redirect '/'
end

# POSTS ============================================

post '/signin' do
  #¿Qué va en esta parte para ingresar al juego?
@user = User.authenticate(params[:email], params[:password])
  
  if @user
    session[:user_id] = @user.id
    redirect to ("/secret")
  else
    session[:errors] = "ingresa los datos correctamente"
    redirect '/signin'
  end

end

