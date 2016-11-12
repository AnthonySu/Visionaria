class AddIndexToTaggedPosts < ActiveRecord::Migration
  def change
    add_index :tagged_posts, :user_id
  end
end
