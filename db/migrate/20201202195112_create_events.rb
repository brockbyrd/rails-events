class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :performer
      t.string :type
      t.float :price
      t.datetime :time

      t.timestamps
    end
  end
end
