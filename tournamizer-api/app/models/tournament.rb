class Tournament < ApplicationRecord
  has_many :tournament_participants
  has_many :tournament_admins
  has_many :participants, :through => :tournament_participants, :source => :user
  has_many :admins, :through => :tournament_admins, :source => :user
end
