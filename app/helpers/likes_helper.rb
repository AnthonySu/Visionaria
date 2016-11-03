module LikesHelper
    def toggle_like_button(post, user)
        if user.liked?(post)
            link_to image_tag('like.png', size:"15"), like_post_path(post)
        else
            link_to image_tag('unlike.png', size:"15"), like_post_path(post)
        end
    end
    
    def toggle_like_tag_button(post, user)
        if user.liked?(post)
            link_to image_tag('like.png', size:"15"), like_tagged_post_path(post)
        else
            link_to image_tag('unlike.png', size:"15"), like_tagged_post_path(post)
        end
    end
end
