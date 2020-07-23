# Board : à l'initialisation du plateau, il doit instancier immédiatement 9 BoardCases (une par case).
# Variables d'instance : le Board doit embarquer les 9 BoardCase du jeu afin de pouvoir les lire et les modifier facilement.
# Il faut les lui attribuer sous forme d'un array ou d'un hash. Aussi, il est utile de compter le nombre de coup joué pour identifier facilement si on arrive au 9ème coup sans vainqueur.
# Méthodes : le Board va s'occuper de faire le lien entre les BoardCases et le Game : il change les valeurs des BoardCases (de " " à "x" ou "o") et vérifie en fonction de la combinaison
# des BoardCases si la partie est finie (= un joueur a gagné ou bien les 9 cases sont remplies sans vainqueur).

class Board
attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3
  
  def initialize
    print "_" * 9, "\n"
    print "|", "a1.case_content", "|", "a2.case_content", "|", "a3.case_content", "|\n"
    print "|", "b1.case_content", "|", "b2.case_content", "|", "b3.case_content", "|\n"
    print "|", "c1.case_content", "|", "c2.case_content", "|", "c3.case_content", "|\n"
    print "_" * 9, "\n\n"
    # @a1 = A1.new(a1)
    # @a2 = A2.new('a2')
    # @a3 = A3.new('a3')
    # @b1 = B1.new('b1')
    # @b2 = B2.new('b2')
    # @b3 = B3.new('b3')
    # @c1 = C1.new('c1')
    # @c2 = C2.new('c2')
    # @c3 = C3.new('c3')
  end  

  def print_board
  end

  # def print_board
  #   print "_" * 9, "\n"
  #   print "|", a1.case_content, "|", a2.case_content, "|", a3.case_content, "|\n"
  #   print "|", b1.case_content, "|", b2.case_content, "|", b3.case_content, "|\n"
  #   print "|", c1.case_content, "|", c2.case_content, "|", c3.case_content, "|\n"
  #   print "_" * 9, "\n\n"
  # end



end #of class