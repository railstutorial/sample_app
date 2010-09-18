module SessionsHelper
  
  def sign_in(user)
    cookies.permanent.signed[:remember_token] = [user.id, user.salt]
  end
end