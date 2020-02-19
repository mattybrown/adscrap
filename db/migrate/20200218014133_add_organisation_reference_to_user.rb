class AddOrganisationReferenceToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :organisation, null: true, foreign_key: true
  end
end
