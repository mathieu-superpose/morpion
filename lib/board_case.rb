# BoardCase : chacune des 9 instances de BoardCase correspond à l'état d'une case du plateau.
# Variables d'instance : une Boardcase est définie par sa position (A1, B2, B3, etc.) et son contenu (Soit elle est vide, soit elle a comme valeur le string "x",
# soit elle a comme valeur le string "o").

# class BoardCase
#   #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
# def initialize
#     #TO DO : doit régler sa valeur, ainsi que son numéro de case
#   end


class BoardCase
  attr_accessor :case_position, :case_content

  def initialize (case_position, case_content)
    @case_position = case_position
    @case_content = case_content
  end
end #of class
