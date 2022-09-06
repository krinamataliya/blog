class UsersController < ApplicationController

    def create
        puts params
        @user=User.new()
        @user.username=params[:username]
        @user.password=params[:password]
        puts(@user)
        @user.save!

    end

    
    private

   def post_params
       params.require(:user).permit(:username, :password)
   end
 
end
