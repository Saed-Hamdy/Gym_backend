class CreateTrainerRatings < ActiveRecord::Migration[5.0]
  def up
    create_table :trainer_ratings , id: false do |t|
      t.string :rating
      t.references :trainer , foreign_key: true
      t.references :user , foreign_key:true

      t.timestamps
    end
   execute "ALTER TABLE trainer_ratings ADD PRIMARY KEY tpkey (trainer_id,user_id);"
  end
  def down
    drop_table :trainer_ratings
  end
end
