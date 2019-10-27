class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :zip

      t.timestamps
    end
  end
end
