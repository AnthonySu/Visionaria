class ProfilesController < ApplicationController
    respond_to :html, :xml, :json
    
    def profile_params
       params.require(:profile).permit(:info, :motivations, :priorities) 
    end    
    
    def show
        @viewed_user = User.find(params[:user_id])
        @viewed_profile = @viewed_user.profile
        @owned = @viewed_profile == current_user.profile
    end    
    
    def update
        @viewed_profile = User.find(params[:user_id]).profile
        @viewed_profile.update(profile_params)
        @viewed_profile.check_params
        @viewed_profile.save!

        respond_with @viewed_profile
    end

end
