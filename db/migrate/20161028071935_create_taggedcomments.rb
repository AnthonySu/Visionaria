class CreateTaggedcomments < ActiveRecord::Migration
  def change
    create_table :taggedcomments do |t|
      t.string :username
      t.text :body
      t.references :tagged_post, index: true, foreign_key: true

      t.timestamps null: false
    end
    #remove_reference :comments, :taggedpost
    #remove_reference :taggedcomments, :taggedpost
    #add_reference :taggedcomments, :tagged_post
  end
end
