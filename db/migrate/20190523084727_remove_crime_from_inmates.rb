class RemoveCrimeFromInmates < ActiveRecord::Migration[5.2]
  def change
    remove_column :inmates, :crime, :string
    remove_column :inmates, :age, :integer
  end
end
