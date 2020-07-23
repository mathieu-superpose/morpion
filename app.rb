require 'bundler'
require 'pry'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'
require 'player'
require 'board'
require 'board_case'
#MyClass.new.perform

#Demander les prénoms des joueur


puts "Entrez le prénom du premier joueur"
name_choice1 = gets.chomp


puts "Entrez le prénom du second joueur"
name_choice2 = gets.chomp



#Initialisation d'une nouvelle partie
new_game = Game.new(name_choice1, name_choice2)

#binding.pry

# new_game.my_board.print_board
# new_game.which_cell?

binding.pry
