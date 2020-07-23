require 'bundler'
require 'pry'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'
require 'player'
require 'board'
require 'board_case'
require 'show'
#MyClass.new.perform

#Demander les prénoms des joueur



puts "Entrez le prénom du premier joueur"
name_choice1 = gets.chomp

puts "Entrez le prénom du second joueur"
name_choice2 = gets.chomp

#Initialisation d'une nouvelle partie
new_game = Game.new(name_choice1, name_choice2)


new_game.perform



#binding.pry


# new_game.turn
# new_game.new_round
# new_game.game_end

#new_game.my_board.print_board
# new_game.which_cell?

# while new_game.is_still_ongoing?

#   new_game.new_players_in_sight
#   new_game.menu
#   new_game.menu_choice
#     new_game.show_players
#     new_game.enemies_attack
#     new_game.show_players
# end
# new_game.end

