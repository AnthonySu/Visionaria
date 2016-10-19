class UserController < ApplicationController
    before_filer :authenticate_user!
    
    def update
    end
    
    def destroy
    end
  
end