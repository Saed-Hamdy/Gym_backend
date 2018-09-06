class CreateGymEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :gym_entities do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :rating
      t.string :gymCode , index: {unique: true}
      t.boolean :approved
      t.references :user , foreign_key: true
      t.timestamps
    end
  end
end
