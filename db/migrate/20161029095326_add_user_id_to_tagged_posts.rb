class AddUserIdToTaggedPosts < ActiveRecord::Migration
  def change
    add_column :tagged_posts, :user_id, :integer
  end
end
