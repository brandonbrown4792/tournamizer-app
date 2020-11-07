class CreateTournaments < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.text :description
      t.integer :tournament_type

      t.timestamps
    end
  end
end
