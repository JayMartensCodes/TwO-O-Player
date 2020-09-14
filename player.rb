class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def info
    "#{name} has #{lives} lives."
  end
end