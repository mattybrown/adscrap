class AddFieldsToAdvertisements < ActiveRecord::Migration[6.0]
  def change
    add_reference :advertisements, :issue, null: true, foreign_key: true
    add_reference :advertisements, :client, null: true, foreign_key: true
    add_reference :advertisements, :user, null: true, foreign_key: true
    add_reference :advertisements, :position, null: true, foreign_key: true
    add_column :advertisements, :width, :integer
    add_column :advertisements, :height, :integer
    
  end
end
