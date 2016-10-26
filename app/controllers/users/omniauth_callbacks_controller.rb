class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    puts @user.errors.to_a
    if @user.persisted?
      puts "USER PERSISTED"
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      puts "Actually, USER NOT PERSISTED"
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    puts "Rootpath: IS HERE: "+root_path
    redirect_to root_path
  end
end