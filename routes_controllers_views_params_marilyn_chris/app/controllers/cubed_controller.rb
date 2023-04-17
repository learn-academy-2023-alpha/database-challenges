class CubedController < ApplicationController
      def cubed
            @cubed = params[:num].to_i ** 3
      end
end
