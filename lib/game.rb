# Game : cette classe s'occupe de gérer toute la partie. À l'initialisation elle crée 2 instances de Player, et 1 instance de Board.
# Variables d'instance : tu peux lui rattacher les 2 players (sous forme d'un array), le Board, et des informations annexes
# comme "quel joueur doit jouer ?", "quel est le statut de la partie (en cours ? player1 a gagné ? etc.)", etc.
# Méthodes : Game permet de jouer un tour (demande au joueur ce qu'il veut faire et rempli la case), s'occupe de finir la partie si un joueur a gagné
# et propose aux joueurs de faire une nouvelle partie ensuite.

class Game
attr_accessor :player1, :player2, :my_board

  def initialize (player1, player2)
    @player1 = Player1.new(player1)
    @player2 = Player2.new(player2)
    @my_board = Board.new
    winning_formulas = [["a1", "a2", "a3"],["b1", "b2", "b3"],["c1", "c2", "c3"],["a1", "b2", "c3"],["a3", "b2", "c1"],["a1", "b1", "c1"],["a2", "b2", "c2"],["a3", "b3", "c3"]]
  end#initialize

  def which_cell?
  	print "Choisi ta case > "
    return case_choice = gets.chomp
  end#which cell

  def flag_wrong_input
    print "Mauvais choix, appuies sur entrée pour recommencer" if cells_available.!include?(casing)
  end#flag_wrong_input

  

  def is_winning?
    for i in (0..7)
      if cells_cross.include?(winning_formulas[i][0]) && cells_round.include?(winning_formulas[i][1]) && cells_round.include?(winning_formulas[i][2])
        abort ("Gagné !")
      else
      end
    end
  end#is_winning?

  # def perform
  #   until cells_available.empty?
  #       #joueur1 joue (def turn)
  #       #jouer 1 gagne?
  #       #tableau plein?
  #       #joueur 2 joue (def turn)
  #       #joueu gage?
  #       #tableau plein?
  #   end
  # end#perform
end #of class
