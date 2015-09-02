class DishesController < ApplicationController
	def index
		@dishes = Dish.all
	end

	def new
	end

	def create
		@dish = Dish.new(dish_params)
		
		if @dish.save
			redirect_to @dish
		else
			render 'new'
		end 
	end

	def show
		@dish = Dish.find(params[:id])
	end

	private
	def dish_params
		params.require(:dish).permit(:title, :description, :price, :image_url)
	end
end
