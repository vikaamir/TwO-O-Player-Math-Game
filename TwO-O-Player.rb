class player 
  attr_accessor :name, :life


  def initialize(name, life)
    @name = name
    @life = life 
  end

  def lose_lofe
    @life -= 1
    puts "#{@name} loses a life, now you have #{@life} lives"
  end

end


class Question
 
  def question
      num1 = rand(1..20)
      num2 = rand(1..20)
      @answer = num1 + num2
      puts "what does #{num1} plus #{num2} equal "
  end
end


  class game
    attr_accessor :answer, player1, player2

    def check_answer(player_answer)
      if @answer = player_answer
        puts"Good job"
      else 
        "Haha you lost!"
      end

      def switch_player()


    end














