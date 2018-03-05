class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.references :student, foreign_key: true
      t.references :ensemble, foreign_key: true

      t.timestamps
    end
  end
end
