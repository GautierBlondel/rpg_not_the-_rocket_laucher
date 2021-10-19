require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/humanplayer'
require_relative 'lib/display_start'

new_game = GameStart.new()
puts new_game.display_message
puts puts

puts "Rentre ton nom de héros / héroïne"
pl_name = "Corben"

humanpl = HumanPlayer.new(pl_name,100,1)
cpt_player1 = Player.new("Josiane", 10)
cpt_player2 = Player.new("José", 10)
system("clear")

puts "Le combat commence !!!!!!"
puts puts 

while humanpl.life_points > 0 && (cpt_player1.life_points > 0 || cpt_player2.life_points > 0) do
  puts "Ton héro / héroïne #{humanpl.name.upcase} possède #{humanpl.show_state} points de vie"
  puts "Quelle action veux-tu effectuer ?"
  puts puts
  puts  "a - chercher une meilleure arme"
  puts "s - chercher à se soigner"
  puts puts
  puts  "attaquer un joueur en vue :"
  puts "0 - Josiane a #{cpt_player1.show_state} de vie"
  puts "1 - José a #{cpt_player2.show_state} de vie"
  puts puts 

  puts "Que décides-tu de faire a / s / 0 / 1 ???"
  
  decision = gets.chomp.ord

  case decision
    when 97
      puts "ca rentre dans 'a'"  
      humanpl.search_weapon
    when 115
      humanpl.search_health_packs
    when 48
      humanpl.attacks(cpt_player1)
      # puts cpt_player1.show_state
    when 49
      humanpl.attacks(cpt_player2)
    else puts "Vous avez entré la mauvaise commande ! Recommencez"
    end
  
    puts "Tu te fais attaquer en retour"
    if cpt_player1.life_points > 0 then cpt_player1.attacks(humanpl) end
    if cpt_player2.life_points > 0 then cpt_player2.attacks(humanpl) end

end 

binding.pry

