class PalindromeController < ApplicationController
      def palindrome
            string = params[:string].downcase.gsub(/[^0-9a-z]/i, '')
            @palindrome = "#{params[:string]} #{string == string.reverse ? 'is' : 'is not'} a palindrome!"
      end
end