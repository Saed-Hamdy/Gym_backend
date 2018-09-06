class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fName
      t.string :lName
      t.string :email , index: {unique: true}
      t.string :password , index: {unique: true}

      t.timestamps
    end
  end
end
