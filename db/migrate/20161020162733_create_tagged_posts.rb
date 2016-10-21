class CreateTaggedPosts < ActiveRecord::Migration
  def change
    create_table :tagged_posts do |t|

      t.timestamps null: false
    end
  end
end
