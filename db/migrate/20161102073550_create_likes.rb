class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :liked
      t.references :post, index: true, foreign_key: true
      t.references :tagged_post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
