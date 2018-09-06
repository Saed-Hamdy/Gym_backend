class CreateTrainers < ActiveRecord::Migration[5.0]
  def change
    create_table :trainers do |t|
      t.string :rating
      t.string :city
      t.string :description
      t.string :imageURL
      t.string :phone
      t.boolean :approved
      t.references :user , foreign_key: true
      t.timestamps
    end
  end
end
