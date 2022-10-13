class PokedexesController < ApplicationController

    def index
        pokedexes = Pokedex.all
        render json: pokedexes
    end

    def show
        pokedex = Pokedex.find(params[:id])
        render json: pokedex 
    end

    def create
        pokedex = Pokedex.create(pokedex_params)
        if pokedex.valid?
          render json: pokedex
        else
          render json: pokedex.errors
        end
      end

      def destroy
        pokedex = Pokedex.find(params[:id])
        if pokedex.destroy  
            render json: pokedex
        else 
            render json:pokedex.errors
        end
      end
    
      def update
        pokedex = Pokedex.find(params[:id])
        pokedex.update(pokedex_params)
        if pokedex.valid?
            render json:pokedex
        else    
            render json: pokedex.errors
        end
      end

      private
      def pokedex_params
        params.require(:pokedex).permit(:name, :catagory, :number)
      end

end
