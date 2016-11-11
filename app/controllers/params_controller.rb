class ParamsController < ApplicationController

  def params_home
    @name = params[:name].upcase
      if @name.start_with?("A")
        @a_name = "Hey, your name starts with the first letter of the alphabet!"
      end
  end



  def guess_a_num
    winning_number = 32
    chosen_number= params[:number].to_i
    if chosen_number > winning_number
      @message = "Guess lower"
    elsif chosen_number < winning_number
      @message = "Guess higher"
    elsif chosen_number == winning_number
      @message = "Correct!"
    end
  end


  def guess_a_num_v2
    winning_number = 27
    chosen_number= params[:number].to_i
    if chosen_number > winning_number
      @message = "Guess lower"
    elsif chosen_number < winning_number
      @message = "Guess higher"
    elsif chosen_number == winning_number
      @message = "Correct!"
    end
  end


  def url_params
    @message = params[:message]
    @second_message = params[:second_message]
  end

end
