class CreateTaggedcomments < ActiveRecord::Migration
  def change
    create_table :taggedcomments do |t|
      t.string :username
      t.text :body
      t.references :tagged_post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
