class RegistrationsController < ApplicationController

def new
  @registration =  Registration.new
end

def create
  @registration = Registration.create(registration_params)
  if Registration.check(@registration)
    @@curent_user = Registration.last.name
    redirect_to '/'
  else
    redirect_to 'https://starecat.com/content/wp-content/uploads/when-you-enter-wrong-password-then-reset-password-and-there-is-new-password-cant-be-old-password.jpg'
  end
end

private
def registration_params
  params.require(:registration).permit(:email, :password, :name)
end
end