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
  end

  def which_cell?
  	print "Choisi ta case > "
  	# puts case_choice = gets.chomp
   #  puts case_choice
   #  puts cell_available?(case_choice)
  	# return  (cell_available?(case_choice) == true) ?  (print "Bon") : (print "Mauvais")#) ? (case_choice) : (puts "non disponible")
    return case_choice = gets.chomp
  end
  # def cell_available?(case_choice)
  #   puts "#{case_choice} est dans cell"
  #   return case_choice.case_availability
  # end

  def menu 
    print "Choisi ta case > "
    case_choice = gets.chomp
    puts "s - chercher à se soigner "
    puts ""
    puts "Attaquer un des bots encore en vie : "
    i = 0
    @enemies_in_sight.each do |enemy|
      if enemy.life_points > 0
        puts "Tu peux sinon attaquer l'ennemi #{i}"
        enemy.show_state
        i = i + 1
      end
    end
  end



end #of class
