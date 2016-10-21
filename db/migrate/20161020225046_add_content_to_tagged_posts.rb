class AddContentToTaggedPosts < ActiveRecord::Migration
  def change
    add_column :tagged_posts, :content, :text
  end
end
