# Player
# Variables d'instance : un joueur a un nom (habile) et un symbole ("x" ou "o").

class Player
 attr_accessor :name

 def initialize(name)
  @name = name
 end

end


class Player1 < Player
  def initialize(name)
    @name = name
    puts "C'est moi le player 1 : #{name}"
  end #end initialize
end #end of class player1


class Player2 < Player
  def initialize(name)
    @name = name
    puts "C'est moi le player 2 : #{name}"
  end #end initialize
end #end of class player2