require 'bundler'
require 'pry'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'
require 'player'

#MyClass.new.perform

#Demander les prénoms des joueur


puts "Entrez le prénom du premier joueur"
player1 = gets.chomp


puts "Entrez le prénom du second joueur"
player2 = gets.chomp



#Initialisation d'une nouvelle partie
new_game = Game.new(player1, player2)

