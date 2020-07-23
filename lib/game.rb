class Game
attr_accessor :my_board, :current_player, :status, :array_players

  def initialize

    logo_display

    backspace_xtimes(5)
    cross_display
    puts "    Entrez le prénom du premier joueur"
    print "      >"
    name1 = gets.chomp
    puts `clear`

    backspace_xtimes(5)
    round_display
    puts "    Entrez le prénom du second joueur"
    print "      >"
    name2 = gets.chomp
    puts `clear`

    @player1 = Player.new(name1, ' X ')
    @player2 = Player.new(name2, ' O ')
    @array_players = [@player1, @player2]

    @my_board = Board.new
    #@status = "on going"
    @current_player = array_players[rand(0..1)]

  end#initialize

def logo_display
  puts `clear`
  puts "+-----------------------------------------+"
  puts "|-----------------------------------------|"
  puts "||          XXX                          ||"
  puts "||         XXXXX                         ||"
  puts "|| XXXX    XXXXXX                        ||"
  puts "||  XXXXXX XXX XXX                       ||"
  puts "||   XXXXXXXXX   XX                      ||"
  puts "||    XXXXXXXX   XXX                     ||"
  puts "||    XXX   XX   XXX                     ||"
  puts "||    XXXX       XXXX                    ||"
  puts "||  XXXXXXX      XXXXX                   ||"
  puts "|| XXXXXXXX     XXXXXXXX                 ||"
  puts "|| XXXXXXXX     XXXXXXXX                 ||"
  puts "||                XXXXX ORPION           ||"
  puts "||                                       ||"
  puts "||                                       ||"
  puts "||   LE JEU QUI MONTRE                   ||"
  puts "||                                       ||"
  puts "||       QUE TU EN AS DANS LA CULOTTE    ||"
  puts "||                                       ||"
  puts "||                                       ||"
  puts "|-----------------------------------------|"
  puts "+-----------------------------------------+"
  print " " * 15 + "Presse Entrée pour commencer"
  puts gets.chomp
  puts `clear`
end

def cross_display
cross = ["+-----------+","|       X   |","|  XX  XX   |","|   XXXX    |","|    XXXX   |","|   XX  XXX |","+-----------+"]
cross.each {|line| puts " " * 12 + line.to_s }
end

def round_display
round = ["o-----------o","|   OOOO    |","|  OO  OOO  |","| OO    OO  |","| OOO  OOO  |","|   OOOOO   |","o-----------o"]
round.each {|line| puts " " * 12 + line.to_s }
end

def backspace_xtimes(x)
  print "\n" * x
end

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
