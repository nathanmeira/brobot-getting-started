class CreateCidades < ActiveRecord::Migration[6.0]
  def change
    create_table :cidades do |t|

      t.timestamps
    end
  end
end
