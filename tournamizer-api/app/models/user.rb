class User < ApplicationRecord
  has_many :tournament_participants
  has_many :tournament_admins
  has_many :tournaments_participating, :through => :tournament_participants, :source => :tournament
  has_many :tournaments_administrating, :through => :tournament_admins, :source => :tournament

  has_secure_password
end
