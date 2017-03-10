class Player
  attr_reader :selected
  def initialize
    @selected = []
  end

  def allocate(n)
    @selected << n
  end
end
