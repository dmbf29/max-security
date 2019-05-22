class CreateInmates < ActiveRecord::Migration[5.2]
  def change
    create_table :inmates do |t|
      t.string :name
      t.string :crime
      t.string :image_url
      t.boolean :death_row, default: true
      t.references :prison, foreign_key: true

      t.timestamps
    end
  end
end
