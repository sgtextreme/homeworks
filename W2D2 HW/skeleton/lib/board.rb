class Board
  attr_accessor :cups

  def initialize
    @board.cups = Array.new(14){4}
    @board.cup[6].shift
    @board.cups[13].shift
  end


  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos >13
      puts "invalid move"
      return false
    end
    true
  end

end

def make_move(start_pos, current_player_name)
  i = @board.cups[start_pos]
  @board.cups[start_pos].clear
  until i == 0
    position = start_pos +=1
    if position > 13
      position = 0
    end
    if position == 6 && @player.side == 1
      position+=1
    end
    if position == 13 && @player.side == 2
      position+=1
    end
    @board.cups[position] += 1
    i-=1
  end
  render
end

def next_turn(ending_cup_idx)
  # helper method to determine what #make_move returns
end

def render
  print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
  puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
  print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
  puts ""
  puts ""
end

def one_side_empty?
  if board.cups[6] == [] || board.cups[13] == []
    true
  end
  false
end

def winner
  if board.cups[6] == []
    "Player 1 wins"
  end
  if  board.cups[13] == []
    "Player 2 wins"
  end
end
end
Mancala.new("bob","tom")
play
