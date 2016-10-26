class PostController < ApplicationController
    before_filter :authenticate_user!, except: [ :index ]
    
    def post_params
        params.require(:post).permit(:user, :content)
    end    
    
    def index
        if !user_signed_in?
            redirect_to root_path
        end
        @posts = Post.all.order('created_at DESC')
    end
    
    def create
        @post = Post.create!(post_params)
        @post.user = current_user.username
        @post.save
        flash[:notice] = "Post successfully saved!"
        redirect_to post_index_path
    end
    
    def update
    end
    
    def destroy
    end
    
end