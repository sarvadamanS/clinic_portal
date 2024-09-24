class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
