class CreateRegiaos < ActiveRecord::Migration[6.0]
  def change
    create_table :regiaos do |t|

      t.timestamps
    end
  end
end
