class LikesController < ApplicationController
    def like
        @post = Post.find(params[:post_id])
        
        
    end
end
