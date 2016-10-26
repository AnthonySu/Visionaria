class TaggedPostsController < ApplicationController

    def tagged_post_params
        params.require(:post).permit(:user, :content, :tag, :category)
    end 

    def index
        if !user_signed_in?
            redirect_to root_path
        end
        @taggedposts = TaggedPost.all.order('created_at DESC')
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
        @tagged.user = current_user.username
        @tagged.save
        flash[:notice] = "Post successfully saved!"
        redirect_to tagged_posts_path
    end
    
end
