class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.integer :value
      t.datetime :time
      t.string :unit

      t.timestamps
    end
  end
end
