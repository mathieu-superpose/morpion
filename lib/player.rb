# Player
# Variables d'instance : un joueur a un nom (habile) et un symbole ("x" ou "o").

class Player
 attr_accessor :name

 def initialize(name)
  @name = name
 end

 def turn#joueur joue
    until cells_available.include?(casing)
      print_board#afficher tableau
      which_cell?#choix
      flag_wrong_input
      puts gets.chomp
    end
      update_cells(casing)#imputation
      is_winning?#déterminer si gagnant
  end#turn

end

class Player1 < Player
  def initialize(name)
    @name = name
    puts "C'est moi le player 1 : #{name}"
  end #end initialize

  def update_cells(casing)
    cells_available.delete(casing)
    cells_round.push(casing)
  end#update_cells_round

end #end of class player1



class Player2 < Player
  def initialize(name)
    @name = name
    puts "C'est moi le player 2 : #{name}"
  end #end initialize
  def update_cells(casing)
    cells_available.delete(casing)
    cells_cross.push(casing)
  end#update_cells_cross
end #end of class player2
