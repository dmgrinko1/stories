class Addhabtmaccosiation < ActiveRecord::Migration[5.0]
  remove_column :events, :user_id
  create_table :events_users, id: false do |t|
    t.belongs_to :assembly, index: true
    t.belongs_to :part, index: true
  end
end
