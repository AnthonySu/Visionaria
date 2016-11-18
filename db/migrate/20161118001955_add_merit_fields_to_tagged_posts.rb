class AddMeritFieldsToTaggedPosts < ActiveRecord::Migration
  def change
    add_column :tagged_posts, :sash_id, :integer
    add_column :tagged_posts, :level,   :integer, :default => 0
  end
end
