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

  def initialize

    puts "Entrez le prénom du premier joueur"
    name1 = gets.chomp
    
    puts "Entrez le prénom du second joueur"
    name2 = gets.chomp

    @player1 = Player.new(name1, 'X') 
    @player2 = Player.new(name2, 'O')
    @array_players = [@player1, @player2]
   
    @my_board = Board.new
    #@status = "on going"
    @current_player = array_players[rand(0..1)]

  end#initialize



  def perform
    
    my_board.print_board
    my_board.victory?
    
    while my_board.victory? == false
      my_board.player_move(@player1)
      my_board.print_board
      abort ("C'est gagné") if my_board.victory?
      abort ("Partie nulle") if my_board.game_continue?

      my_board.player_move(@player2)
      my_board.print_board
      abort ("C'est gagné") if my_board.victory?
      abort ("Partie nulle") if my_board.game_continue?
    end
  end#perform
end #of class
