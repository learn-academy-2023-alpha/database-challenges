class HomeController < ApplicationController
    def landing
        @team = ['Tammy', 'Xavier', 'Manny', 'Aaron']
    end
    def xavier
       
        @food = ['Pizza', 'Tacos', 'Fried Chicken']
    end
    def tammy
     
        @food = ['Burgers and Fries', 'Sushi', 'Tacos']
    end
    def cubed
        @number = params[:number].to_i**3
    end
    def evenly
        @number1 = params[:number1].to_i
        @number2 = params[:number2].to_i
        if @number1 % @number2 == 0 
            @evenly = 'true'
        else
        @evenly = 'false'
        end
    end
    def palindrome
        @string = params[:string]
        if @string == @string.reverse
            @palindrome = 'true'
        else
             @palindrome = 'false'
        end
    end
    def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adjective = params[:adjective]
        @adverb = params[:adverb]
    end
end
