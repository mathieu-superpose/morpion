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

#Initialisation d'une nouvelle partie
Game.new.perform
