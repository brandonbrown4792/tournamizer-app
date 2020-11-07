class CreateTournamentParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :tournament_participants do |t|
      t.references :tournament, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
