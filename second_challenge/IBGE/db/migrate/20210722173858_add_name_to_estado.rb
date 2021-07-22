class AddNameToEstado < ActiveRecord::Migration[6.0]
  def change
    add_column :estados, :name, :string
  end
end
