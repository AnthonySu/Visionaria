class AddUserToTaggedPosts < ActiveRecord::Migration
  def change
    add_column :tagged_posts, :user, :string
  end
end
