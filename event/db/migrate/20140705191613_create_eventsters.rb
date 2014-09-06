class CreateEventsters < ActiveRecord::Migration
  def change
    create_table :eventsters do |t|
      t.string :title
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
