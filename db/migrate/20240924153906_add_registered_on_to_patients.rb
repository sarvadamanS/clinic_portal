class AddRegisteredOnToPatients < ActiveRecord::Migration[7.2]
  def change
    add_column :patients, :registered_on, :date
  end
end
