class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :nickname
      t.string :last_name
      t.string :age
      t.float :height
      t.float :weight

      t.timestamps
    end
  end
end
