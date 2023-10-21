require_relative './question'
class Game
  attr_accessor :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def start_game
    while @player1.is_alive? && @player2.is_alive?
      new_turn
    end
    end_game
  end

  def new_turn
    question = Question.new
    question.ask_question(@current_player.name)
    answer = gets.chomp.to_i
    if question.is_correct?(answer)
      puts "Correct!"
      puts "p1:#{@player1.lives}/3 vs p2:#{@player2.lives}/3"

    else
      puts "Seriously? No!"
      @current_player.reduce_life
      puts "p1:#{@player1.lives}/3 vs p2:#{@player2.lives}/3"
    end
    switch_turn
  end

  def switch_turn
    @current_player = (@current_player == @player1) ? @player2 : @player1
     puts"--- NEW TURN ---"
  end


  def end_game
    puts "---GAME OVER---"
    if @player1.is_alive?
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
    elsif @player2.is_alive?
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
    else
    end
  end
end


player1 = Player.new("Player1")
player2 = Player.new("Player2")
game = Game.new(player1, player2)
game.start_game


