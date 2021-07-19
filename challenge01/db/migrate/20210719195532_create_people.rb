class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :nickname
      t.string :last_name
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
