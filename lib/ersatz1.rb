# On construit une grille vide. Initialisation de l'état des cases.
# Les cases vont prendre les valeur de départ
a1 = "a1"
a2 = "a2"
a3 = "a3"
b1 = "b1"
b2 = "b2"
b3 = "b3"
c1 = "c1"
c2 = "c2"
c3 = "c3"


# On interroge le joueur pour demander quelle case il veut remplir. Le joueur fait un choix de case à remplir.
# puts "\n\nQuelle case pour un rond?\n\n"
# case_choice = gets.chomp

# On évalue si le choix est possible (Case existante? Case déjà occupée?)
# if case_choice
#   puts ""

# L'état de la case choisie change de vide à remplie par le symbole du joueur



# Le joueur suivant fait un choix de case à remplir.
# Si le choix est possible l'état de la case choisie change de vide à remplie par le symbole du joueur
# On évalue si la combinaison choisie entraine la victoire du joueur


#methode qui permet de déterminer si une combinaison est gagnante
winning_formulas_array = [[a1, a2, a3],[b1, b2, b3],[c1, c2, c3],[a1, b2, c3],[a3, b2, c1],[a1, b1, c1],[a2, b2, c2],[a3, b3, c3]]

cells_availaible = [a1, a2, a3, b1, b2, b3, c1, c2, c3]
cells_round = []
cells_cross = []

case_choice = "nothing" # initialisation du choix du joueur. Au début de la partie cette variable est vide



  until cells_availaible.empty?
    until cells_availaible.include?(case_choice)
      puts `clear`
      puts "\n\nQuelle case pour un rond?\n\n"
      print "_" * 9, "\n"
      print "|", a1, "|", a2, "|", a3, "|\n"
      print "|", b1, "|", b2, "|", b3, "|\n"
      print "|", c1, "|", c2, "|", c3, "|\n"
      print "_" * 9, "\n\n"
            print "    >"
            case_choice = gets.chomp
      (cells_availaible.include?(case_choice)) ? (print "Tu as choisi la case #{case_choice}"):(print "Mauvais choix, cette case n'existe pas. Appuies sur entrée pour recommencer")  
      puts gets.chomp
    end
    cells_availaible.delete(case_choice)
    cells_round.push(case_choice)
    case case_choice
      when a1
        a1 = "0"
      when a2
        a2 = "0"
      when a3
        a3 = "0"
      when b1
        b1 = "0"
      when b2
        b2 = "0"
      when b3
        b3 = "0"
      when c1
        c1 = "0"
      when c2
        c2 = "0"
      when c3
        c3 = "0"
      else
        puts "problème à résoudre"
    end
    puts `clear`
  end
