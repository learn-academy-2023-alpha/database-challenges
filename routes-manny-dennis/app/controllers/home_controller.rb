class HomeController < ApplicationController
        
        def names 
            @students = ['Manny', 'Dennis']
        end

        def tran 
           render html: "Movies,Bar,Churchs Chicken"

        end

        def landing

        end

        def flores
            render html: "football,coding,bar"
        end

        

    end

    # @names = params[:username]
  
    # @logged_in = params[:logged_in]


    # sdv

