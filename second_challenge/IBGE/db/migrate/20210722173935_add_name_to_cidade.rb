class AddNameToCidade < ActiveRecord::Migration[6.0]
  def change
    add_column :cidades, :name, :string
  end
end
