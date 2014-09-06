class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :name
      t.integer :beds
      t.integer :baths
      t.integer :rent
      t.string :address

      t.timestamps
    end
  end
end
