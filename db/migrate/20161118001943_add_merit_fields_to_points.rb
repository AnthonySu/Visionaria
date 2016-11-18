class AddMeritFieldsToPoints < ActiveRecord::Migration
  def change
    add_column :points, :sash_id, :integer
    add_column :points, :level,   :integer, :default => 0
  end
end
