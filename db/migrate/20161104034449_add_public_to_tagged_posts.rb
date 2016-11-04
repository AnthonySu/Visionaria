class AddPublicToTaggedPosts < ActiveRecord::Migration
  def change
    add_column :tagged_posts, :public, :boolean
  end
end
