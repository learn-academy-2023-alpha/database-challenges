class MainController < ApplicationController
    # def lander
    #     render html: 'Welcome to our working site'
    # end
    
    def lander
    end
    def aaron
    end
    def yahya
    end
    def cubed
        @number = params[:number]
    end
    def evenly
        @number = params[:number]
        @number2 = params[:number2]
        if @number.to_i % @number2.to_i == 0
            @result_string = 'Numbers are evenly divisble'
        else
            @result_string = 'Not evenly divisble'
        end
    end
    def palindrome
        @string = params[:string]
        if @string == @string.reverse
            @result_string  = "#{@string} is a palindrome"
        else 
            @result_string = "#{@string} is not a palindrome"
        end
    end
    def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adjective = params[:adjective]
        @adverb = params[:adverb]
        @result_string = "#{@noun} was trying to #{@verb} but because they were #{@adjective}, so they ended up doing it #{@adverb}"
    end
    def evenly_button
        @number3 = params[:evenly]
        @number4 = params[:evenly2]
        if @number3.to_i % @number4.to_i == 0
            @result_string1 = 'Numbers are evenly divisble'
        else
            @result_string1 = 'Not evenly divisble'
        end

    end
end
