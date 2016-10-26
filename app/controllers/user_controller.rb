class UserController < ApplicationController
    before_filter :authenticate_user!
   
    def update
    end
    
    def destroy
    end
  
    def create
    end
end