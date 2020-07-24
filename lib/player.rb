class Player
 #attr_reader :name, :symbol, :victory
 attr_accessor :name, :symbol, :victory

 def initialize(name, symbol, victories)
  @name = name
  @symbol = symbol
  @victories = victories
 end#init

 def is_victorious
   @victories += 1
 end



end#class player
