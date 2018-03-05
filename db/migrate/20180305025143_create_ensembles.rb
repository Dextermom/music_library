class CreateEnsembles < ActiveRecord::Migration[5.1]
  def change
    create_table :ensembles do |t|
      t.string :title
      t.string :composer
      t.string :publisher
      t.string :voicing
      t.integer :pml

      t.timestamps
    end
  end
end
