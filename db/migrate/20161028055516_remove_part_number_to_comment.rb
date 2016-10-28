class RemovePartNumberToComment < ActiveRecord::Migration
  def change
    remove_column :comments, :user, :string
  end
end
