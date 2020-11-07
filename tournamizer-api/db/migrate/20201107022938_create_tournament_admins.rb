class CreateTournamentAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :tournament_admins do |t|
      t.references :tournament, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
