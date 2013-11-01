class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
      flash.notice = "Congratulations! You're signed in!"
      sign_in_and_redirect user
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end

=begin
    if User.can_save_you?

      # flash a congratulation notice
      # redirect to homepage
    else
      # redirect to new_user_page
    end
=end
  end
end
