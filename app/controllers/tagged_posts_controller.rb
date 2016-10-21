class TaggedPostsController < ApplicationController

    def tagged_post_params
        params.require(:content, :user, :tag, :category)
    end  

    def index
        @taggedposts = TaggedPost.all.order('created_at DESC')
        if params[:sort_tag] 
            @taggedposts = @taggedposts.where(tag: params[:sort_tag]).order('created_at DESC')
        end
        if params[:sort_category]
            @taggedposts = @taggedposts.where(category: params[:sort_category]).order('created_at DESC')
        end
    end

    def create
        @tagged = TaggedPost.new
        @tagged.content = params[:content]
        @user = current_user
        @tagged.user = @user.username
        @tagged.tag = params[:tag]
        @tagged.category = params[:category]
        @tagged.save
        flash[:notice] = "Post successfully saved!"
        redirect_to tagged_posts_path
    end
    
end
