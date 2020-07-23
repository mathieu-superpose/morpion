# Board : à l'initialisation du plateau, il doit instancier immédiatement 9 BoardCases (une par case).
# Variables d'instance : le Board doit embarquer les 9 BoardCase du jeu afin de pouvoir les lire et les modifier facilement.
# Il faut les lui attribuer sous forme d'un array ou d'un hash. Aussi, il est utile de compter le nombre de coup joué pour identifier facilement si on arrive au 9ème coup sans vainqueur.
# Méthodes : le Board va s'occuper de faire le lien entre les BoardCases et le Game : il change les valeurs des BoardCases (de " " à "x" ou "o") et vérifie en fonction de la combinaison
# des BoardCases si la partie est finie (= un joueur a gagné ou bien les 9 cases sont remplies sans vainqueur).

# class Board
#   #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
#   #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué


#   def initialize
#     #TO DO :
#     #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
#     #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
#   end



#   def victory?
#     #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
#   end

class Board
attr_accessor :cells
#attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3
#attr_accessor [:a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3]

  def initialize

    @a1 = BoardCase.new('a1', "A1")
    @a2 = BoardCase.new('a2', "A2")
    @a3 = BoardCase.new('a3', "A3")
    @b1 = BoardCase.new('b1', "B1")
    @b2 = BoardCase.new('b2', "B2")
    @b3 = BoardCase.new('b3', "B3")
    @c1 = BoardCase.new('c1', "C1")
    @c2 = BoardCase.new('c2', "C2")
    @c3 = BoardCase.new('c3', "C3")

    @cells = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]

    @cells_available = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]

  end#initialize


  def player_move(player)

    print "Choisi ta case > "
    case_choice = gets.chomp
    
    while @cells_available.include?(case_choice) == false
      print "Mauvais choix, recommence"
      print "Choisi ta case, rentre une case disponible avec la lettre et le chiffre correspondant > "
      case_choice = gets.chomp
    end
    @cells_available.delete(case_choice) 
#<-----------------------------------définir quel joueur et adapter content
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

  def victory?
    if @a1.case_content == "O" && @a2.case_content == "O" && @a3.case_content == "O" || @a1.case_content == "X" && @a2.case_content == "X" && @a3.case_content == "X"
      return true
    elsif @b1.case_content == "O" && @b2.case_content == "O" && @b3.case_content == "O" || @b1.case_content == "X" && @b2.case_content == "X" && @b3.case_content == "X"
      return true
    elsif @c1.case_content == "O" && @c2.case_content == "O" && @c3.case_content == "O" || @c1.case_content == "X" && @c2.case_content == "X" && @c3.case_content == "X"
      return true
    elsif @a1.case_content == "O" && @b1.case_content == "O" && @c1.case_content == "O" || @a1.case_content == "X" && @b1.case_content == "X" && @c1.case_content == "X"
      return true 
    elsif @a2.case_content == "O" && @b2.case_content == "O" && @c2.case_content =="O" || @a2.case_content == "X" && @b2.case_content == "X" && @c2.case_content =="X"
      return true
    elsif @a3.case_content == "O" && @b3.case_content == "O" && @c3.case_content == "O" || @a3.case_content == "X" && @b3.case_content == "X" && @c3.case_content == "X"
      return true 
    elsif @a1.case_content == "O" && @b2.case_content == "O" && @c3.case_content == "O" || @a1.case_content == "X" && @b2.case_content == "X" && @c3.case_content == "X"
      return true
    elsif @c1.case_content == "O" && @b2.case_content == "O" && @a3.case_content == "O" || @c1.case_content == "X" && @b2.case_content == "X" && @a3.case_content == "X"
      return true
    else return false
    end 
  end#victory?


  def game_continue?
    return @cells_available.empty?
    # (@cells_available == []) ? (false) : (true)
  end#game_continue?


  def print_board

     print "_" * 9, "\n"
     print "|", @a1.case_content, "|", @a2.case_content, "|", @a3.case_content, "|\n"
     print "|", @b1.case_content, "|", @b2.case_content, "|", @b3.case_content, "|\n"
     print "|", @c1.case_content, "|", @c2.case_content, "|", @c3.case_content, "|\n"
     print "_" * 9, "\n\n"
     print "    >"
  end#print_board


end#class Board
