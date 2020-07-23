# Game : cette classe s'occupe de gérer toute la partie. À l'initialisation elle crée 2 instances de Player, et 1 instance de Board.
# Variables d'instance : tu peux lui rattacher les 2 players (sous forme d'un array), le Board, et des informations annexes
# comme "quel joueur doit jouer ?", "quel est le statut de la partie (en cours ? player1 a gagné ? etc.)", etc.
# Méthodes : Game permet de jouer un tour (demande au joueur ce qu'il veut faire et rempli la case), s'occupe de finir la partie si un joueur a gagné
# et propose aux joueurs de faire une nouvelle partie ensuite.

# class Game
#   #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, 
# nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

#   def initialize
#     #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
#   end





   

# end






class Game
attr_accessor :my_board, :current_player, :status, :array_players

  def initialize (player1, player2)
    @player1 = Player1.new(player1)
    @player2 = Player2.new(player2)
    @array_players = [@player1, @player2]
    @my_board = Board.new
    @status = "on going"
    @current_player = array_players[rand(0..1)]

    

    # winning_formulas = [["a1", "a2", "a3"],["b1", "b2", "b3"],["c1", "c2", "c3"],["a1", "b2", "c3"],["a3", "b2", "c1"],["a1", "b1", "c1"],["a2", "b2", "c2"],["a3", "b3", "c3"]]
    # cells_available = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
    # cells_round = []
    # cells_cross = []
  end#initialize


  #   def turn
#     #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). 
# Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, 
# passe au joueur suivant si la partie n'est pas finie.
#   end

  def turn
    my_board.play_turn
    my_board.victory?
  end#turn

  #def new_round
  ## TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  #end

  # def game_end
  ## TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  #end 

  

  def perform
    turn
    #until cells_available.empty?
        #joueur1 joue (def turn)
        #jouer 1 gagne?
        #tableau plein?
        #joueur 2 joue (def turn)
        #joueu gage?
        #tableau plein?
    #end
  end#perform
end #of class
