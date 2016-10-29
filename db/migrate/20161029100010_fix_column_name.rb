class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :posts, :user, :username
    rename_column :tagged_posts, :user, :username
  end
end
