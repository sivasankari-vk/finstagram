helpers do
    def current_user
      User.find_by(id: session[:user_id])
    end
end

# When a browser requests the root of the application
get '/' do

    @finstagram_posts = FinstagramPost.order(created_at: :desc)
    erb(:index)

 # Stop
end

get '/signup' do       # if a user navigates to the path "/signup",
    @user = User.new   # setup empty @user object
    erb(:signup)       # render "app/views/signup.erb"
end

post '/signup' do
    
    #GRAB USER INPUT VALUES FROM PARAMS
    email       =   params[:email]
    avatar_url  =   params[:avatar_url]
    username    =   params[:username]
    password    =   params[:password]

    #instantiate and save a User
    @user = User.new({ 
                    email: email, 
                    avatar_url: avatar_url, 
                    username: username, 
                    password: password
                    })
            
    # if all user params are present, user validations will pass and user can be saved
    if @user.save

        redirect to('/login')

    else

        erb(:signup)

    end

end

get '/login' do
    erb(:login)
end

post '/login' do

    username = params[:username]
    password = params[:password]

    # 1. Find user by username
    @user = User.find_by(username: username)

    #2. If that user exists
    #check if that user's password matches the password input
    #3. if the passwords match

    if @user && @user.password == password
        #login successfull
        session[:user_id] = @user.id
        "Success! User with id #{session[:user_id]} is logged in!!"
        redirect to('/')
    else
        @error_message = "Login failed."
        erb(:login)
    end

end

get '/logout' do

    session[:user_id] = nil
    redirect to('/')

end