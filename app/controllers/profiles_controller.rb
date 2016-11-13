class ProfilesController < ApplicationController
    respond_to :html, :xml, :json
    
    def profile_params
       params.require(:profile).permit(:info, :motivations, :priorities) 
    end    
    
    def show
        @viewed_user = User.find(params[:id])
        @viewed_profile = @viewed_user.profile
        @owned = @viewed_profile == current_user.profile
        
        if @owned == false
            @viewed_profile.info == "Click on text to edit user info." ? @info = " " : @info = @viewed_profile.info
            @viewed_profile.motivations == "Click on text to edit user motivations." ? @motivations = " " : @motivations = @viewed_profile.motivations
            @viewed_profile.priorities == "Click on text to edit user priorities." ? @priorities = " " : @priorities = @viewed_profile.priorities
        end
    end    
    
    def update
        @viewed_profile = User.find(params[:user_id]).profile
        @viewed_profile.update(profile_params)
        @viewed_profile.check_params
        @viewed_profile.save!

        respond_with @viewed_profile
    end

end
