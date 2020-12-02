class CreateArenas < ActiveRecord::Migration[6.0]
  def change
    create_table :arenas do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :capacity

      t.timestamps
    end
  end
end
