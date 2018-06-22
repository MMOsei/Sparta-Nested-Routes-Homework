class CreateCousins < ActiveRecord::Migration[5.2]
  def change
    create_table :cousins do |t|
      t.string :name
      t.string :gender
      t.boolean :married
      t.integer :mum_id

      t.timestamps
    end
  end
end
