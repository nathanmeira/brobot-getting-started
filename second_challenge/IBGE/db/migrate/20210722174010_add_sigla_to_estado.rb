class AddSiglaToEstado < ActiveRecord::Migration[6.0]
  def change
    add_column :estados, :sigla, :string
  end
end
