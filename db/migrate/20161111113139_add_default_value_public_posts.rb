class AddDefaultValuePublicPosts < ActiveRecord::Migration
  def change
    change_column :posts, :public, :boolean, :default => true
    change_column :tagged_posts, :public, :boolean, :default => true
  end
end
