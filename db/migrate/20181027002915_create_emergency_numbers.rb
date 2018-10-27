class CreateEmergencyNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :emergency_numbers do |t|
      t.string :name
      t.string :telephone_number

      t.timestamps
    end
  end
end
