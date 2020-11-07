puts "Destroying Data"
TournamentAdmin.destroy_all
TournamentParticipant.destroy_all
User.destroy_all
Tournament.destroy_all

puts "Creating Users"
brandon = User.create(email: 'brandon@brandon.com', display_name: 'brandon', password: '123', description: 'Yo boi')
robert = User.create(email: 'robert@robert.com', display_name: 'robert', password: '123', description: 'Yo boi')
cory = User.create(email: 'cory@cory.com', display_name: 'cory', password: '123', description: 'Yo boi')
gene = User.create(email: 'gene@gene.com', display_name: 'gene', password: '123', description: 'Yo boi')
geoffrey = User.create(email: 'geoffrey@geoffrey.com', display_name: 'geoffrey', password: '123', description: 'Yo boi')

puts "Creating Tournaments"
tournament1 = Tournament.create(name: 'Tournament 1', description: 'The first tournament', tournament_type: 1)
tournament2 = Tournament.create(name: 'Tournament 2', description: 'The second tournament', tournament_type: 1)

puts "Creating Tournament Admin Associations"
TournamentAdmin.create(user: brandon, tournament: tournament1)
TournamentAdmin.create(user: robert, tournament: tournament2)

puts "Creating Tournament Participant Associations"
TournamentParticipant.create(user: brandon, tournament: tournament1)
TournamentParticipant.create(user: robert, tournament: tournament1)
TournamentParticipant.create(user: cory, tournament: tournament1)
TournamentParticipant.create(user: gene, tournament: tournament1)
TournamentParticipant.create(user: robert, tournament: tournament2)
TournamentParticipant.create(user: cory, tournament: tournament2)
TournamentParticipant.create(user: gene, tournament: tournament2)
TournamentParticipant.create(user: geoffrey, tournament: tournament2)