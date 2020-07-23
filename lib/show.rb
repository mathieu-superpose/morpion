class Show

attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3#, :cells


  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)

    print "_" * 9, "\n"
    print "|", @a1.case_content, "|", @a2.case_content, "|", @a3.case_content, "|\n"
    print "|", @b1.case_content, "|", @b2.case_content, "|", @b3.case_content, "|\n"
    print "|", @c1.case_content, "|", @c2.case_content, "|", @c3.case_content, "|\n"
    print "_" * 9, "\n\n"
    print "    >"

    # print "_" * 9, "\n"
    # print "|", a1.case_content, "|", a2.case_content, "|", a3.case_content, "|\n"
    # print "|", b1.case_content, "|", b2.case_content, "|", b3.case_content, "|\n"
    # print "|", c1.case_content, "|", c2.case_content, "|", c3.case_content, "|\n"
    # print "_" * 9, "\n\n"
    # print "    >"


    # print "_" * 9, "\n"
    # print "|", cells[0].case_content, "|", cells[1].case_content, "|", cells[2].case_content, "|\n"
    # print "|", cells[3].case_content, "|", cells[4].case_content, "|", cells[5].case_content, "|\n"
    # print "|", cells[6].case_content, "|", cells[7].case_content, "|", cells[8].case_content, "|\n"
    # print "_" * 9, "\n\n"
    # print "    >"

    
  end
end