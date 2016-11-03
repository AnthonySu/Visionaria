class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :posts, :user, :username
    rename_column :tagged_posts, :user, :username
    
    add_column :posts, :likes, :integer
    add_column :tagged_posts, :likes, :integer
  end
end
