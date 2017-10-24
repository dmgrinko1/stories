class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.references :user, index: true
      t.string  :name
      t.date    :date
      t.boolean :visited
      t.timestamps
    end
  end
end
