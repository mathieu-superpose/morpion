class Board
attr_accessor :cells

  def initialize

    @a1 = BoardCase.new('a1', "0")
    @a2 = BoardCase.new('a2', "0")
    @a3 = BoardCase.new('a3', "0")
    @b1 = BoardCase.new('b1', "0")
    @b2 = BoardCase.new('b2', "0")
    @b3 = BoardCase.new('b3', "0")
    @c1 = BoardCase.new('c1', "0")
    @c2 = BoardCase.new('c2', "0")
    @c3 = BoardCase.new('c3', "0")

    @cells = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
    @cells_available = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]

  end#initialize

  def player_move(player)

    print "Choisi ta case > "
    case_choice = gets.chomp

    while @cells_available.include?(case_choice) == false
      puts "Mauvais choix, recommence"
      puts "Choisi bien ta case, et rentre"
      print "la lettre et le chiffre correspondant > "
      case_choice = gets.chomp
    end
    puts `clear`
    @cells_available.delete(case_choice)

    case case_choice
    when "a1"
      @a1.case_content = player.symbol
    when "a2"
      @a2.case_content = player.symbol
    when "a3"
      @a3.case_content = player.symbol
    when "b1"
      @b1.case_content = player.symbol
    when "b2"
      @b2.case_content = player.symbol
    when "b3"
      @b3.case_content = player.symbol
    when "c1"
      @c1.case_content = player.symbol
    when "c2"
      @c2.case_content = player.symbol
    when "c3"
      @c3.case_content = player.symbol
    else
      puts "problème à résoudre"
    end
  end#player_move

  #def victory?
    # if @a1.case_content == @a2.case_content && @a2.case_content == @a3.case_content
    #   return true
    # elsif @b1.case_content == @b2.case_content && @b2.case_content == @b3.case_content
    #   return true
    # elsif @c1.case_content == @c2.case_content && @c2.case_content == @c3.case_content
    #   return true
    # elsif @a1.case_content == @b1.case_content && @b1.case_content == @c1.case_content
    #   return true
    # elsif @a2.case_content == @b2.case_content && @b2.case_content == @c2.case_content
    #   return true
    # elsif @a3.case_content == @b3.case_content && @b3.case_content == @c3.case_content
    #   return true
    # elsif @a1.case_content == @b2.case_content && @b2.case_content == @c3.case_content
    #   return true
    # elsif @c1.case_content == @b2.case_content && @b2.case_content == @a3.case_content
    #   return true
    # else return false
    # end
  #end#victory?

  def victory?
    if @a1.case_content == "2" && @a2.case_content == "2" && @a3.case_content == "2" || @a1.case_content == "1" && @a2.case_content == "1" && @a3.case_content == "1"
      return true
    elsif @b1.case_content == "2" && @b2.case_content == "2" && @b3.case_content == "2" || @b1.case_content == "1" && @b2.case_content == "1" && @b3.case_content == "1"
      return true
    elsif @c1.case_content == "2" && @c2.case_content == "2" && @c3.case_content == "2" || @c1.case_content == "1" && @c2.case_content == "1" && @c3.case_content == "1"
      return true
    elsif @a1.case_content == "2" && @b1.case_content == "2" && @c1.case_content == "2" || @a1.case_content == "1" && @b1.case_content == "1" && @c1.case_content == "1"
      return true
    elsif @a2.case_content == "2" && @b2.case_content == "2" && @c2.case_content =="2" || @a2.case_content == "1" && @b2.case_content == "1" && @c2.case_content =="1"
      return true
    elsif @a3.case_content == "2" && @b3.case_content == "2" && @c3.case_content == "2" || @a3.case_content == "1" && @b3.case_content == "1" && @c3.case_content == "1"
      return true
    elsif @a1.case_content == "2" && @b2.case_content == "2" && @c3.case_content == "2" || @a1.case_content == "1" && @b2.case_content == "1" && @c3.case_content == "1"
      return true
    elsif @c1.case_content == "2" && @b2.case_content == "2" && @a3.case_content == "2" || @c1.case_content == "1" && @b2.case_content == "1" && @a3.case_content == "1"
      return true
    else return false
    end
  end#victory?

  def game_continue?
    return @cells_available.empty?
  end#game_continue?

  def print_board
    disp = [["-------------","|           |","|           |","|           |","|           |","|           |","-------------"],["+-----------+","|       X   |","|  XX  XX   |","|   XXXX    |","|    XXXX   |","|   XX  XXX |","+-----------+"],["o-----------o","|   OOOO    |","|  OO  OOO  |","| OO    OO  |","| OOO  OOO  |","|   OOOOO   |","o-----------o"]]
    #disp = [[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6]]
     puts ""
     print "      A1           A2           A3\n"
     for n in (0..6)
       print disp[@a1.case_content.to_i][n]
       print disp[@a2.case_content.to_i][n]
       print disp[@a3.case_content.to_i][n]
       print "\n"
     end
     print "       B1           B2           B3\n"
     for n in (0..6)
       print disp[@b1.case_content.to_i][n]
       print disp[@b2.case_content.to_i][n]
       print disp[@b3.case_content.to_i][n]
       print "\n"
     end
     print "       C1           C2           C3\n"
     for n in (0..6)
       print disp[@c1.case_content.to_i][n]
       print disp[@c2.case_content.to_i][n]
       print disp[@c3.case_content.to_i][n]
       print "\n"
     end
     print "\n\n", " " * 7, ">"
  end#print_board
end#class Board
