# Player
# Variables d'instance : un joueur a un nom (habile) et un symbole ("x" ou "o").

# class Player
#   #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).

  
#   def initialize
#     #TO DO : doit régler son nom et sa valeur
#   end


class Player
 attr_reader :name, :symbol

 def initialize(name, symbol)
  @name = name
  @symbol = symbol
 end#init
end#class player