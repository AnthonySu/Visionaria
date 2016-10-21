class PostController < ApplicationController
    before_filter :authenticate_user!, except: [ :index ]
    
    def post_params
        params.require(:content, :user)
    end    
    
    def index
        @posts = Post.all.order('created_at DESC')
    end
    
    def create
        #@post = Post.create!({:content => params[:content], :user => current_user.username})
        
        @post = Post.new
        @post.content = params[:content]
        @user = current_user
        puts @user.inspect
        @post.user = @user.username
        puts @post.inspect
        @post.save
        flash[:notice] = "Post successfully saved!"
        redirect_to post_index_path
    end
    
    def update
    end
    
    def destroy
    end
    
end