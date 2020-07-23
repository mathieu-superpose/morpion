#methode qui permet de déterminer si une combinaison est gagnante
a1 = "a1"
a2 = "a2"
a3 = "a3"
b1 = "b1"
b2 = "b2"
b3 = "b3"
c1 = "c1"
c2 = "c2"
c3 = "c3"

winning_formulas_array = [[a1, a2, a3],[b1, b2, b3],[c1, c2, c3],[a1, b2, c3],[a3, b2, c1],[a1, b1, c1],[a2, b2, c2],[a3, b3, c3]]
cells_available = [a1, a2, a3, b1, b2, b3, c1, c2, c3]
cells_round = [b1, b2, b3, c1]
cells_cross = []


def include_winning_combinaison?
  for i in (0..7)
    if cells_round.include?(winning_formulas_array[i][0]) && cells_round.include?(winning_formulas_array[i][1]) && cells_round.include?(winning_formulas_array[i][2])
      print "Gagné"
      puts ""
    else
      print "Perdu"
      puts ""
    end
  end
end