# BoardCase : chacune des 9 instances de BoardCase correspond à l'état d'une case du plateau.
# Variables d'instance : une Boardcase est définie par sa position (A1, B2, B3, etc.) et son contenu (Soit elle est vide, soit elle a comme valeur le string "x",
# soit elle a comme valeur le string "o").


class BoardCase
  attr_accessor :case_position, :case_content, :case_availability

  def initialize (case_position)
    @case_position = case_position
    @case_content = "A1"
  end

end #of classe


class A1 < BoardCase
  def initialize(case_position)
    @case_position = "a1"
    @case_content = "A1"
    @case_availability = true
  end
end

class A2 < BoardCase
  def initialize(case_position)
    @case_position = "a2"
    @case_content = "A2"
    @case_availability = true
  end
end


class A3 < BoardCase
  def initialize(case_position)
    @case_position = "a3"
    @case_content = "A3"
    @case_availability = true
  end
end


class B1 < BoardCase
  def initialize(case_position)
    @case_position = "b1"
    @case_content = "B1"
    @case_availability = true
  end
end

class B2 < BoardCase
  def initialize(case_position)
    @case_position = "b2"
    @case_content = "B2"
    @case_availability = true
  end
end

class B3 < BoardCase
  def initialize(case_position)
    @case_position = "b3"
    @case_content = "B3"
    @case_availability = true
  end
end


class C1 < BoardCase
  def initialize(case_position)
    @case_position = "c1"
    @case_content = "C1"
    @case_availability = true
  end
end

class C2 < BoardCase
  def initialize(case_position)
    @case_position = "c2"
    @case_content = "C2"
    @case_availability = true
  end
end

class C3 < BoardCase
  def initialize(case_position)
    @case_position = "c3"
    @case_content = "C3"
    @case_availability = true
  end
end


