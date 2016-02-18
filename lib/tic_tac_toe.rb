class TicTacToe
  def initialize
    @board= Array.new(9) { " "  }
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "

  end
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,4,8], # Diagonal
  [6,4,2], # Diagonal
  [0,3,6], # First Column 
  [1,4,7], # Second column
  [2,5,8]  # Third column 
]
  def move(position, current_player="X")
    @position = position-1
    @current_player = current_player
    @board[@position]= @current_player
  end


  def position_taken?(position)
    @position = position
    @board[@position] == "X" || @board[@position] =="O"
  end


   def valid_move?(input)
    input.to_i.between?(1,9) && !position_taken?(input.to_i-1)
  end

  def turn
    puts "Please enter 1-9:"
    

  end


  def turn_count

  end


  def current_player

  end


  def won?

  end


  def full?

  end


  def draw?

  end


  def over?

  end


  def winner

  end

end
