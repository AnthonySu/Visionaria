class AddTaggedCommentsToTaggedPosts < ActiveRecord::Migration
  def change
    add_column :tagged_posts, :taggedcomments, :integer
  end
end
