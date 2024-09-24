class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :password_digest
      t.integer :role, default: 0  # This is for receptionist (0) and doctor (1)

      t.timestamps
    end
  end
end
