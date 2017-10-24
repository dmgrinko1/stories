class Fixname < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :user_id, :integer, index: true
    rename_column :events_users, :assembly_id, :user_id
    rename_column :events_users, :part_id, :event_id
  end
end
