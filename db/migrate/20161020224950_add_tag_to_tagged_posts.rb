class AddTagToTaggedPosts < ActiveRecord::Migration
  def change
    add_column :tagged_posts, :tag, :string
  end
end
