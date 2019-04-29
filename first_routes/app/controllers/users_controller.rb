class UsersController < ApplicationController
    def index
        # render plain: "I'm in the index action!"
        @users = User.all
        render json: @users
    end

    def create
        # @user = User.new(user_params)
        @user = User.new(params.require(:user).permit(:name, :email))
        if @user.save
            render json: @user
        else 
            render json: @user.errors.full_messages, status: :unprocessable_entity
        end 
    end 

    def show 
        @user = User.find(params[:id])
        render json: @user 
    end 

    def update 
        # @user = User.new(params.require(:user).permit(:name, :email))
        # @user.id = params[:id]
        @user = User.find(params[:id])
         
        @user.update(user_params)
        # user_hash = params[:user]
        # @user.name = user_hash[:name]
        # @user.email = user_hash[:email]
       
        # User.update(params)

        # @user = User.update(params[:id], :name => params[:name], :email => params[:email])
        render json: @user 

    end 

    def destroy 
        @user = User.find(params[:id])
        @user.destroy
        debugger 
        redirect_to users_url

    end 


    private
        def user_params
            params.require(:user).permit(:name, :email)
        end
end