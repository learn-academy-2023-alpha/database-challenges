class MainController < ApplicationController

    def landing
        
    end

    def brandon
        @brandon = 'Brandon'
        @btop3 = "Brandon's Top 3 Food"
        @btop3array = ['Japanese', 'Mexican', 'Thai']
    end

    def michael
        @michael = 'Michael'
        @mtop3 = "Michael's Top 3 Food"
        @mtop3array = ['Baked Ziti', 'Lasagna', 'Tortellini']
    end

    def cubed
        number = params[:number].to_i 
        @cubed = number**3
    end
    #Evenly works for Ruby intergers only, does not account for floats
    def evenly
        number1 = params[:number1].to_i 
        number2 = params[:number2].to_i 
        if number1 % number2 == 0
            @result_even = 'The first number is evenly divisible by the second.'
        else
            @result_even = 'The first number is not evenly divisible by the second.'
        end
    end

    def palindrome
        palindrome = params[:string]
        if palindrome.downcase == palindrome.downcase.reverse
            @return_yes = 'The word is a palindrome.'
        else
            @return_yes = 'The word is not a palindrome.'
        end
    end

    def madlib
        noun = params[:string1]
        verb = params[:string2]
        adjective = params[:string3]
        adverb = params[:string4]

        @return_story = "The #{noun} went on a hike but, then a bear #{verb} and the #{noun} #{adjective} #{adverb} all the way home."
    end

end
