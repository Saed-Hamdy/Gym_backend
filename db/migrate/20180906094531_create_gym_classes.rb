class CreateGymClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :gym_classes do |t|
      t.string :description
      t.string :name
      t.references :gym_entity , foreign_key: true

      t.timestamps
    end
  end
end
