class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.reference :solo
      t.reference :student

      t.timestamps
    end
  end
end
