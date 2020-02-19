class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end