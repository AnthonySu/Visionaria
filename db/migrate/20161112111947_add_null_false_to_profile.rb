class AddNullFalseToProfile < ActiveRecord::Migration
  def change
    change_column_null :profiles, :info, false
    change_column_null :profiles, :motivations, false
    change_column_null :profiles, :priorities, false
  end
end
