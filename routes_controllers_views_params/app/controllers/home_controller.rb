class HomeController < ApplicationController
    def ira
        @favorites = ['Basketball', 'Food', 'Music']
    end

    def cj
        @favorites = ['Gaming', 'Food', 'Music']
    end

    def cubed
        @cubed = params[:number].to_i ** 3
    end

    def evenly
        @number1 = params[:number1]
        @number2 = params[:number2]
    end

    def palindrome
        @word = params[:word]
        if @word.downcase == @word.downcase.reverse
            @palindrome = "#{@word} is a palindrome."
        else
            @palindrome = "#{@word} is not a palindrome."
        end
    end

    def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adjective = params[:adjective]
        @adverb = params[:adverb]
    end
end
