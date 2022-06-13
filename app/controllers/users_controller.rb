class UsersController < ApplicationController
    def index
        @users = User.all
      
    end

    def new
      @user=User.new(user_params)
    end

    def create
        @user = User.new(user_params)

        if @user.save
            flash[:success] = "Great! A new user has been created!"
            redirect_to new_user_path
        else
            flash.now[:error] = "Invalid!"
            render :new, status: :unprocessable_entity
        end
    end

    def user_params
        params.permit(:username,:email,:password)
    end
end
