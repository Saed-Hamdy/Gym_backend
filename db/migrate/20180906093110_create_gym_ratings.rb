class CreateGymRatings < ActiveRecord::Migration[5.0]
  def up
    create_table :gym_ratings , id: false do |t|
      t.string :rating
      t.references :gym_entity , foreign_key: true
      t.references :user , foreign_key:true

      t.timestamps
    end
    execute "ALTER TABLE gym_ratings ADD PRIMARY KEY rpkey (gym_entity_id,user_id);"
  end

  def down
    drop_table :gym_ratings
  end
end
