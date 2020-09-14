class Turn

  attr_reader :firstInt, :secondInt, :answer, :player, :turn

  def initialize(player, turn)
    @firstInt = rand(20)
    @secondInt = rand(20)
    @answer = @firstInt + @secondInt
    @player = player
    @turn = turn
  end

  def question
    if self.turn > 1
      puts "----- NEW TURN -----"
    end
    puts "#{self.player.name}: What does #{self.firstInt} plus #{self.secondInt} equal?"
    player_answer = gets.chomp
    if player_answer.to_i == self.answer
      puts "#{self.player.name}: YES! You are correct."
    else
      puts "#{self.player.name}: Seriously? No!"
      self.player.lives -= 1
    end
  end
end