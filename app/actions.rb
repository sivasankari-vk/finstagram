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

        "User #{username} saved successfully!"

    else

        erb(:signup)

    end

end