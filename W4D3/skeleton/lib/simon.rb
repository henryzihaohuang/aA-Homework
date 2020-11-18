class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end


  def add_random_color
    @seq.push(COLORS.sample)
  end

  def take_turn
      self.show_sequence
      until @game_over
        self.require_sequence
        self.round_success_message
        @sequence_length += 1
      end
  end

  def play
    until @game_over
      self.take_turn
    end
    
    self.game_over_message
    self.reset_game
  end

  

  def show_sequence
    self.add_random_color
    @seq.each  {|color| puts color}
    system('clear')
  end

  def require_sequence
    puts "Please enter colors in order: "
    
    user_input = gets.chomp

    @game_over = true if @seq != user_input
      
  end


  def round_success_message
    puts "You passed! Here's the next sequence"

  end

  def game_over_message
    puts "You lost!"
    return false

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
