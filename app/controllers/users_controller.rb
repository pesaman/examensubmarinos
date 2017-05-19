# GETS ============================================

get '/signup' do
	erb :signup
end


# POSTS ============================================

post '/signup' do
  p params
  existe = User.find_by(email: params[:email])
  #¿Qué va en esta parte para registrar al jugador?
	@user = User.new(name: params[:name], email: params[:email], password: params[:password])
  p params[:name]
  p params[:password]
  @user.save
  if @user.valid? 
        session[:user_id] = @user.id
        session[:errors] = "Cambios Guardados"
        redirect to('/secret')
  else
    if existe
        session[:errors] = "Usuario ya Existe Intenta de Nuevo"
        redirect '/signup'
        p @user.name
        else
      
        session[:errors] = "No puedes dejar campos vacios"
         redirect '/signup'
      end
  end
end