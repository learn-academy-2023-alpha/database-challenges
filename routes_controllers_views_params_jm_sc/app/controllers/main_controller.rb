class MainController < ApplicationController
    def landing

    end

    def simon
        @simon_title = "Stuff to eat"
        @simon = ["burgers", "sushi", "pizza"]
    end

    def josh
        @josh_title = "Stuff to do"
        @josh = ["laundry", "dishes", "homework"]
    end
end
