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
    @a1 = A1.new('a1')
    @a2 = A2.new('a2')
    @a3 = A3.new('a3')
    @b1 = B1.new('b1')
    @b2 = B2.new('b2')
    @b3 = B3.new('b3')
    @c1 = C1.new('c1')
    @c2 = C2.new('c2')
    @c3 = C3.new('c3')
    @cells = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
  end#initialize

  def which_cell?
    print "Choisi ta case > "
    return case_choice = gets.chomp
  end#which cell

  def flag_wrong_input
    print "Mauvais choix, appuies sur entrée pour recommencer" if !cells_available.include?(casing)
  end#flag_wrong_input

  def update_cells_round(casing)
    cells_available.delete(casing)
    cells_round.push(casing)
  end#update_cells_round
  def update_cells_cross(casing)
    cells_available.delete(casing)
    cells_cross.push(casing)
  end#update_cells_cross

  def update_case_content(casing)
#<-----------------------------------définir quel joueur et adapter content
    case casing
    when a1
      a1 = content
    when a2
      a2 = content
    when a3
      a3 = content
    when b1
      b1 = content
    when b2
      b2 = content
    when b3
      b3 = content
    when c1
      c1 = content
    when c2
      c2 = content
    when c3
      c3 = content
    else
      puts "problème à résoudre"
    end
  end#update_case_content

  def victory?#TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    for i in (0..7)
      if cells_cross.include?(winning_formulas[i][0]) && cells_round.include?(winning_formulas[i][1]) && cells_round.include?(winning_formulas[i][2])
        abort ("Gagné !")
      else
      end
    end
  end#victory



  def print_board
    #binding.pry
     puts Show.new.show_board(@cells)
  end#print_board

  #   def play_turn
#     #TO DO : une méthode qui :
#     #1) demande au bon joueur ce qu'il souhaite faire
#     #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
#   end

  def play_turn#joueur joue
    #until cells_available.include?(casing)
    print_board#afficher tableau
    which_cell?#choix
    flag_wrong_input
    #end
    update_cells(casing)#imputation
  end#turn


end#class Board
