class Registration < ApplicationRecord
  def Registration.check(registration)
    if User.find_by(email: "#{registration.email}") == nil
      return false 
    end 
    if registration.password == User.find_by(email: "#{registration.email}").password
      $curent_user = Registration.last.name
      return true
    else
    return false
    end
  end
end
