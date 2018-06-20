module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, except: [:create]
      before_action :authenticate_user, except: [:create]
      
      def show
        render json: @user
      end
    
      def create
        @user = user.new(user_params)
    
        if @user.save
          render json: @user, status: :created, location: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end
    
      def update
        if @user.update(user_params)
          render json: @user, status: :created, location: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end
      
      private
        
        def set_user
          @user = User.find(params[:id])
        end
        
        def user_params
          params.permit(:email, :password_digest)
        end
    end
  end
end

