require './player'
require './turn'

player1 = Player.new('Billy')
player2 = Player.new('Joe')

turn = 1

while player1.lives > 0 && player2.lives > 0
  if turn.odd?
    player = player1
  else
    player = player2
  end
  currentTurn = Turn.new(player, turn)
  currentTurn.question
  puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
  turn += 1
end

puts "----- GAME OVER -----", "Good bye!"