class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.date :pub_date
      t.references :publication, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
