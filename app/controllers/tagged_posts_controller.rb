class TaggedPostsController < ApplicationController

    def tagged_post_params
        params.require(:post).permit(:user_id, :username, :content, :tag, :category)
    end 


    def index
        if !user_signed_in?
            redirect_to root_path
        end
        @taggedposts = TaggedPost.where('public = ? OR username = ?', true, current_user.username).order('created_at DESC')
        if params[:sort_tag] 
            @taggedposts = @taggedposts.where(tag: params[:sort_tag]).order('created_at DESC')
        end
        if params[:sort_category]
            @taggedposts = @taggedposts.where(category: params[:sort_category]).order('created_at DESC')
        end
    end

    def new
        @selected_category = {}
        @selected_goal = {}
        @all_categories = TaggedPost.all_categories
        @all_un_goals = TaggedPost.all_un_goals
    end    


    def create
        @tagged = TaggedPost.create!(tagged_post_params)
        @tagged.user_id = current_user.id
        @tagged.username = User.find(@tagged.user_id).username
        @tagged.public = true
        @tagged.public = false if params[:type] == 'private'
        @tagged.save
        flash[:notice] = "Post successfully saved!"
        redirect_to tagged_posts_path
    end
    
    
    def like
        if params[:id]!=nil
            @post = TaggedPost.find(params[:id])
        
            if current_user.liked?(@post)
               @like = Like.find_by(:tagged_post_id => @post.id, :user_id => current_user.id)
               @like.destroy
               flash[:notice] = "You unliked the post!"
            else
                @like = @post.likes.create
                current_user.likes << @like
                flash[:notice] = "You liked the post!"
            end
            @post.save
        end
        redirect_to tagged_posts_path
    end
end
