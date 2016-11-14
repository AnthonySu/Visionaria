class AddDefaultValuesToProfile < ActiveRecord::Migration
  def change
    change_column :profiles, :info, :text, :default => "Click on text to edit user info."
    change_column :profiles, :motivations, :text, :default => "Click on text to edit user motivations."
    change_column :profiles, :priorities, :text, :default => "Click on text to edit user priorities."
  end
end
