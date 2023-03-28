class NumbersController < ApplicationController
    def cubed 
        @number = params[:number].to_i
        @number = @number ** 3
        # 125
    end
    def is_divisible_by
        @number1 = params[:number1].to_i 
        @number2 = params[:number2].to_i
        if @number1 % @number2 ==0 
            @result_string = 'is divisible by'
        else
            @result_string = 'is not divisible by'
        end
    end
    def palindrome
        @word_string = params[:word_string]
        if @word_string == @word_string.reverse 
            @result_string = 'is a palindrome'
        else
            @result_string = 'is not a palindrome'
        end
    end
    def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adjective = params[:adjective]
        @adverb = params[:adverb]
        @result_string = "Once upon a time, there was a #{@adjective} #{@noun} who loved to #{@verb} #{@adverb}. One day, the #{@noun} decided to go on an adventure to. On the way, the #{@noun} met friendly #{@noun}s who joined in on the fun. They all #{@verb} #{@adverb} together until the sun went down. The #{@noun} and the friendly #{@noun}s had a great time and couldn't wait to #{@verb} #{@adverb} again!"
    end

end
