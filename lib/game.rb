class Game
attr_accessor :my_board, :current_player, :status, :array_players, :another_game

  def initialize

    logo_display

    backspace_xtimes(5)
    cross_display
    puts "    Entrez le prénom du premier joueur"
    print "      >"
    name1 = gets.chomp.capitalize
    puts `clear`

    backspace_xtimes(5)
    round_display
    puts "    Entrez le prénom du second joueur"
    print "      >"
    name2 = gets.chomp.capitalize
    puts `clear`

    @player1 = Player.new(name1, '1', 0)
    @player2 = Player.new(name2, '2', 0)
    @array_players = [@player1, @player2]

    @my_board = Board.new
    #@status = "on going"
    @current_player = array_players[rand(0..1)]
    @another_game = false
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
    player1_victories = 0
    player2_victories = 0
    answer = "oui"
    while answer == "oui"
    answer = ""

      my_board.print_board
      my_board.victory?

      while my_board.victory? == false
        if my_board.victory? == false
          my_board.player_move(@player1)
          my_board.print_board

        @player1.is_victorious if my_board.victory?
        player1_victories += 1 if my_board.victory?
        puts ("   C'est gagné\nFélicitations #{@player1.name}!") if my_board.victory? == true
        puts ("Partie nulle") if my_board.game_continue?
        else
        end
        if my_board.victory? == false
            my_board.player_move(@player2)
            my_board.print_board

          @player2.is_victorious if my_board.victory?
          player2_victories += 1 if my_board.victory?
          puts ("C'est gagné\nFélicitations #{@player2.name}!") if my_board.victory? == true
          puts ("Partie nulle") if my_board.game_continue?
        else
        end
      end
      print "\nVictoires: #{@player1.name} #{player1_victories} / #{@player2.name}  #{player2_victories} \nUne autre partie? (Oui / Non ?)"

      until (answer == "oui" || answer == "non")
        answer = gets.chomp.downcase
        (another_game = true) if (answer == "oui")
      end
      my_board.reinit
      puts `clear`
    end
    puts "Merci d'avoir joué au Morpion!"
    gets.chomp
    # while my_board.victory? == false
    #   my_board.player_move(@player1)
    #   my_board.print_board
    #   abort ("   C'est gagné\nFélicitations #{@player1.name}!") if my_board.victory?
    #   abort ("Partie nulle") if my_board.game_continue?
    #   my_board.player_move(@player2)
    #   my_board.print_board
    #   abort ("C'est gagné\nFélicitations #{@player2.name}!") if my_board.victory?
    #   abort ("Partie nulle") if my_board.game_continue?
    # end
  end#perform
end #of class
