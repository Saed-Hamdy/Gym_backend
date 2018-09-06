class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :email , index: {unique: true}
      t.string :password , index: {unique: true}

      t.timestamps
    end
  end
end
