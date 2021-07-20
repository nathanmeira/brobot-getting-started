class AddAlturaToPerson < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :altura, :float
  end
end
