class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create!(comment_params)
        @anonymous = params[:anonymous]
        if @anonymous
            @comment.username = "Anonymous"
        else
            @comment.username = current_user.username
        end
        @comment.save
        redirect_to post_comments_path(@post)
    end
    
    def index
        if !user_signed_in?
            redirect_to root_path
        end
        @post = Post.find(params[:post_id])
        @comments = @post.comments.order('created_at DESC')
    end
    
    def destroy
    
    end
    

    private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
