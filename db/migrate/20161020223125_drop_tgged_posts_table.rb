class DropTggedPostsTable < ActiveRecord::Migration
  def up
    drop_table :taggedposts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
