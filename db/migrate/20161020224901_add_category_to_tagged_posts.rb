class AddCategoryToTaggedPosts < ActiveRecord::Migration
  def change
    add_column :tagged_posts, :category, :string
  end
end
