class HomeController < ApplicationController
    def ira
        @favorites = ['Basketball', 'Food', 'Music']
    end

    def cj
        @favorites = ['Gaming', 'Food', 'Music']
    end

end
