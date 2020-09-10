class Api::V1::AuthController < ApplicationController
    def create
      user = User.find_by(username: params[:username])
  
      if user && user.authenticate(params[:password])
          render json: { id: user.id, username: user.username, first_name: user.first_name, last_name: user.last_name, to_dos: user.to_dos}
      else
          render json: { error: 'Invalid username or password.' }
      end
    end
  end