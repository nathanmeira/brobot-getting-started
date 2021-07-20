class AddPesoToPerson < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :peso, :float
  end
end
