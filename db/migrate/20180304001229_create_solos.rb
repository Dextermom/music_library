class CreateSolos < ActiveRecord::Migration[5.1]
  def change
    create_table :solos do |t|
      t.string :title
      t.string :composer
      t.integer :PML

      t.timestamps
    end
  end
end
