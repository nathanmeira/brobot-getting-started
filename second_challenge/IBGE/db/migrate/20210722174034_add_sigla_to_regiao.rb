class AddSiglaToRegiao < ActiveRecord::Migration[6.0]
  def change
    add_column :regiaos, :sigla, :string
  end
end
