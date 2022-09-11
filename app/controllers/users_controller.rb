class UsersController < ApplicationController
    before_action :authorized, only: [:index, :update, :auto_login]
   
    #REGISTER
    def create
        @user = User.create(user_params)
        if @user.valid?
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}
        else
            render json: {error: 'Creating user unsuccessful!'}
        end
    end

    def update
        
        @user = User.update(user_params)
        if @user.valid?
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}
        else
            render json: {error: 'Updating password unsuccessful!'}
        end
    end

    #LOGGING IN
    def login
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}
        else
            render json: {error: "Invalid username or password"}
        end
    end

    def auto_login 
        render json: @user
    end

    private

    def user_params
        params.permit(:first_name, :username, :password, :age)
    end
end
