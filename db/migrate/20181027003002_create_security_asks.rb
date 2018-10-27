class CreateSecurityAsks < ActiveRecord::Migration[5.0]
  def change
    create_table :security_asks do |t|
      t.string :ask
      t.string :response
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
