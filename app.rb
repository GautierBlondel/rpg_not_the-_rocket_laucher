require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/humanplayer'

player1 = Player.new("Josiane", 10)
player2 = Player.new("José", 10)
puts "Voici l'état de chaque joueur :"
puts puts
puts "A ma gauche nous avons #{player2.name} avec #{player2.life_points} points de vie"
puts puts
puts "La cloche retentie, les deux challengers se regardent en chien de faïence"

puts "Honneur aux dames ! #{player1.name} tape la première"
puts puts 

# puts "Player 2 points #{player2.life_points}"
while player1.show_state > 0 && player2.life_points > 0 do
    player1.attacks(player2)
    if player2.life_points <= 0
      puts puts 
      puts "c'est bien vrai"
      break
    else player2.attacks(player1)
  end
end

binding.pry

