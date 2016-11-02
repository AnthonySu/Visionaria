class LikesController < ApplicationController
    def create
        @post = Post.find(params[:id])
        @like.post_id = @post.id
        @like.user_id = current_user.id
        @like.save!
    end
    
    def destroy
        self.destroy
    end
end
