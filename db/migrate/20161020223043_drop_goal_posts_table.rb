class DropGoalPostsTable < ActiveRecord::Migration
  def up
    drop_table :goal_posts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
