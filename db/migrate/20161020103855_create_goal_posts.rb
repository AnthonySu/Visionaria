class CreateGoalPosts < ActiveRecord::Migration
  def change
    create_table :goal_posts do |t|

      t.timestamps null: false
    end
  end
end
