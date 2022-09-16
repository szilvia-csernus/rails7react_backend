class UsersController < ApplicationController
    before_action :authorized, only: [:auto_login, :update]
   
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
        success = @user.update!(user_params)
        if success
            token = encode_token({user_id: @user.id})
            render json: {user: @user}
        else
            render json: {error: 'Updating password unsuccessful!'}
        end
    end

    #LOGGING IN
    def login
        @user = User.find_by(username: params[:user][:username])

        if @user && @user.authenticate(params[:user][:password])
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
        params.require(:user).permit(:first_name, :username, :password)
    end
end
