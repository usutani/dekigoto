class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.datetime :started_at, null: false

      t.timestamps
    end
  end
end
