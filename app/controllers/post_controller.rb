class PostController < ApplicationController
    before_filter :authenticate_user!, except: [ :index ]
    
    def post_params
        params.require(:content)
    end    
    
    def index
        @posts = Post.all
    end
    
    def create
        @post = Post.new
        @post.content = params[:content]
        @post.save
        flash[:notice] = "Post successfully saved!"
        redirect_to post_index_path
    end
    
    def update
    end
    
    def destroy
    end
    
end