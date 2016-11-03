class PostController < ApplicationController
    before_filter :authenticate_user!, except: [ :index ]
    
    def post_params
        params.require(:post).permit(:user_id, :username, :content)
    end    
    
    def index
        if !user_signed_in?
            redirect_to root_path
        end
        @posts = Post.all.order('created_at DESC')
        @users = User.all
    end
    
    def create
        @post = Post.create!(post_params)
        @post.user_id = current_user.id
        @post.username = User.find(@post.user_id).username
        @post.save
        flash[:notice] = "Post successfully saved!"
        redirect_to post_index_path
    end
    
    def update
    end
    
    def destroy
    end
    
    def like
        if params[:id]!=nil
            @post = Post.find(params[:id])
        
            if current_user.liked?(@post)
               @like = Like.find_by(:post_id => @post.id, :user_id => current_user.id)
               @like.destroy
               flash[:notice] = "You unliked the post!"
            else
                @like = @post.likes.create(@post_id)
                current_user.likes << @like
                flash[:notice] = "You liked the post!"
            end
            @post.save
        end
        redirect_to post_index_path
    end
    
end