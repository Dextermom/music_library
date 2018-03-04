class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.references :solo, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
