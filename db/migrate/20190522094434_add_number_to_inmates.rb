class AddNumberToInmates < ActiveRecord::Migration[5.2]
  def change
    add_column :inmates, :age, :integer
  end
end
