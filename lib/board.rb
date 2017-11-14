class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new(1)}
    @cups.length.times do |i|
      if i == 6 || i == 13
        @cups[i] << nil
      else
        @cups[i] + [:stone, :stone, :stone, :stone]
      end
    end
  end


  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos > 12 || start_pos < 1
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos].length
    @cups[start_pos] = nil

    until stones == 0
      ((start_pos + 1)..@cups.length).each do |i|
        @cups[i] << :stone
        stones -= 1
      end
    end

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
  end

  def winner
  end
end
