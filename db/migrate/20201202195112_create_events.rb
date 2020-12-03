class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :performer
      t.string :event_type
      t.integer :price
      t.datetime :time
      t.references :arena, foreign_key: true
      t.references :user, foreign_key: true
      

      t.timestamps
    end
  end
end
