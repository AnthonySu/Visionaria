class CreateTaggedposts < ActiveRecord::Migration
  def change
    create_table :taggedposts do |t|

      t.timestamps null: false
    end
  end
end
