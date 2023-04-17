class MadlibController < ApplicationController
      def madlib
            @sentence = "It was a dark and gloomy day in July of 1969. Two American #{params[:noun1][-1] == 's' ? params[:noun1] : params[:noun1] + 's'} were the first to #{params[:verb]} on the moon. This #{params[:adjective]} trip took several days. They #{params[:verb][-1] == 'e' ? params[:verb] + 'd' : params[:verb] + 'ed'} #{params[:noun2][-1] == 's' ? params[:noun2] : params[:noun2] + 's'} back to Earth and #{params[:adverb]} returned home 28 days later."
      end
end
