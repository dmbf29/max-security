class CreateInmateCrimes < ActiveRecord::Migration[5.2]
  def change
    create_table :inmate_crimes do |t|
      t.references :crime, foreign_key: true
      t.references :inmate, foreign_key: true

      t.timestamps
    end
  end
end
