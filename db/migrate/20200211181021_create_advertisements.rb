class CreateAdvertisements < ActiveRecord::Migration[6.0]
  def change
    create_table :advertisements do |t|
      t.string :position
      t.string :status
      t.text :instructions

      t.timestamps
    end
  end
end
