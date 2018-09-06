class CreateGymLocations < ActiveRecord::Migration[5.0]
  def up
    create_table :gym_locations , id: false do |t|
      t.string :location
      t.references :gym_entity , foreign_key: true

      t.timestamps
    end
    execute "ALTER TABLE gym_locations ADD PRIMARY KEY pkey (gym_entity_id,Location);"
  end

  def down
    #execute "ALTER TABLE gym_locations DROP pkey;"
    drop_table :gym_locations 
  end
end
