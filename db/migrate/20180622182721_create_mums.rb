class CreateMums < ActiveRecord::Migration[5.2]
  def change
    create_table :mums do |t|
      t.string :name
      t.string :relation
      t.boolean :married

      t.timestamps
    end
  end
end
