class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.references :publication, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
