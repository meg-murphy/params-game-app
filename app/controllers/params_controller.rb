class ParamsController < ApplicationController

  def params_home
    @name_array = []
    @name_array << params[:name].upcase

    @name_array.each do |name|
      if name.start_with?("A")
        @a_name = "Hey #{@a_name}, your name starts with the first letter of the alphabet!"
      end

    end
  end

  def guess_a_num
    @message = "Guess a number between 1 & 100."
    num = gets.chomp.to_s

    if num == params[:num]
      @winning_message = "Correct!"
    elsif num > params[:num]
      @too_high_message = "Guess lower!"
    elsif num < params[:num]
      @too_low_message = "Guess higher!"
    end
  end

end
