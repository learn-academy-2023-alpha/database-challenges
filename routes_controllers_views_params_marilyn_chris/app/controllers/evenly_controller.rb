class EvenlyController < ApplicationController
      def check_numbers
            @evenly = 0 == params[:num1].to_i % params[:num2].to_i ? true : false
      end
end