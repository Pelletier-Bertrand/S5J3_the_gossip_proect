class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def create
    @user = User.create('name' => params.require(:user)[:name],
                    'email' => params.require(:user)[:email],
                    'password' => params.require(:user)[:password])
    redirect_to gossips_path
  end

end
