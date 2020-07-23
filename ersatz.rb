
a1 = "a1"
a2 = "a2"
a3 = "a3"
b1 = "b1"
b2 = "b2"
b3 = "b3"
c1 = "c1"
c2 = "c2"
c3 = "c3"

winning_formulas = [[a1, a2, a3],[b1, b2, b3],[c1, c2, c3],[a1, b2, c3],[a3, b2, c1],[a1, b1, c1],[a2, b2, c2],[a3, b3, c3]]
cells_available = [a1, a2, a3, b1, b2, b3, c1, c2, c3]
cells_round = []
cells_cross = []
casing = "nothing"


  until cells_available.empty?
    until cells_available.include?(casing)
      puts `clear`
      puts "\n\nQuelle case pour un rond?\n\n"
      print "_" * 9, "\n"
      print "|", a1, "|", a2, "|", a3, "|\n"
      print "|", b1, "|", b2, "|", b3, "|\n"
      print "|", c1, "|", c2, "|", c3, "|\n"
      print "_" * 9, "\n\n"
			print "    >"
			casing = gets.chomp
      (cells_available.include?(casing)) ? ():(print "Mauvais choix, appuies sur entrée pour recommencer")
      puts gets.chomp
		end
    cells_available.delete(casing)
    cells_round.push(casing)
    case casing
    when a1
      a1 = " 0"
    when a2
      a2 = " 0"
    when a3
      a3 = " 0"
    when b1
      b1 = " 0"
    when b2
      b2 = " 0"
    when b3
      b3 = " 0"
    when c1
      c1 = " 0"
    when c2
      c2 = " 0"
    when c3
      c3 = " 0"
    else
      puts "problème à résoudre"
    end

  for i in (0..7)
    if cells_round.include?(winning_furmulas[i][0]) && cells_round.include?(winning_furmulas[i][1]) && cells_round.include?(winning_furmulas[i][2])
      abort ("Gagné !")
    else
    end
  end
    puts `clear`
     





    until cells_available.include?(casing)
      puts `clear`
      puts "\n\nQuelle case pour une croix?\n\n"
      print "_" * 9, "\n"
      print "|", a1, "|", a2, "|", a3, "|\n"
      print "|", b1, "|", b2, "|", b3, "|\n"
      print "|", c1, "|", c2, "|", c3, "|\n"
      print "_" * 9, "\n\n"
			print "    >"
			casing = gets.chomp
      (cells_available.include?(casing)) ? ():(print "Mauvais choix, appuies sur entrée pour recommencer")
      puts gets.chomp
		end
    cells_available.delete(casing)
    cells_cross.push(casing)
    case casing
    when a1
      a1 = " X"
    when a2
      a2 = " X"
    when a3
      a3 = " X"
    when b1
      b1 = " X"
    when b2
      b2 = " X"
    when b3
      b3 = " X"
    when c1
      c1 = " X"
    when c2
      c2 = " X"
    when c3
      c3 = " X"
    else
      puts "problème à résoudre"
    end
    puts `clear`
    for i in (0..7)
    if cells_cross.include?(winning_furmulas[i][0]) && cells_round.include?(winning_furmulas[i][1]) && cells_round.include?(winning_furmulas[i][2])
      abort ("Gagné !")
    else
    end
  end
  end




# winning_formulas_array = [[a1, a2, a3],[b1, b2, b3],[c1, c2, c3],[a1, b2, c3],[a3, b2, c1],[a1, b1, c1],[a2, b2, c2],[a3, b3, c3]]
# cells_available = [a1, a2, a3, b1, b2, b3, c1, c2, c3]
# cells_round = [b1, b2, b3, c1]
# cells_cross = []


# def include_winning_combinaison?
#   for i in (0..7)
#     if cells_round.include?(winning_formulas_array[i][0]) && cells_round.include?(winning_formulas_array[i][1]) && cells_round.include?(winning_formulas_array[i][2])
#       print "Gagné !"
#       puts ""
#     else
#     end
#   end
# end


    # a1 = "a1"
    # a2 = "a2"
    # a3 = "a3"
    # b1 = "b1"
    # b2 = "b2"
    # b3 = "b3"
    # c1 = "c1"
    # c2 = "c2"
    # c3 = "c3"








# print "_", "_", "_", "_", "_", "_", "_", "\n"
# print "|", a1, "|", a2, "|", a3, "|\n"
# print "|", b1, "|", b2, "|", b3, "|\n"
# print "|", c1, "|", c2, "|", c3, "|\n"
# print "_", "_", "_", "_", "_", "_", "_", "\n\n"
