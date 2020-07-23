class Show

attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

  def show_board(board)

    print "_" * 9, "\n"
    print "|", @a1.case_content, "|", @a2.case_content, "|", @a3.case_content, "|\n"
    print "|", @b1.case_content, "|", @b2.case_content, "|", @b3.case_content, "|\n"
    print "|", @c1.case_content, "|", @c2.case_content, "|", @c3.case_content, "|\n"
    print "_" * 9, "\n\n"
    print "    >"
  end
end
