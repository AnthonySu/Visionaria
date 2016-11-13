class UsersController < ApplicationController
    before_filter :authenticate_user!
    
    def show
        @posts = current_user.posts.where('public = ? OR user_id = ?', true, current_user.id).order('created_at DESC')
        @tagged_posts = current_user.tagged_posts.where('public = ? OR user_id = ?', true, current_user.id).order('created_at DESC')
    end
end