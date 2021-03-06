class FurnituresController < ApplicationController

	def index
		@furniture = Furniture.all
		@search = Furniture.where(nil)
		filtering_params(params).each do |key, value|
			@search = @search.public_send(key, value) if value.present?	
		end

		respond_to do |format| 
			format.html
			format.js 
		end 
	end

	def create
		@furniture = current_user.furnitures.new(furniture_params)
		if @furniture.save
			redirect_to root_path
		else
			redirect_to new_furniture_path
		end

	end

	def new
		@furniture = Furniture.new
	end


	def show
	end

	def edit
		@furniture = current_user.furnitures.find(params[:id])
	end
	
	def update
		@furniture = Furniture.find(params[:id])
		@furniture.update_attributes(furniture_params)
		redirect_to root_path
	end

    def destroy
    	@furniture = Furniture.delete(params[:id])
    	@number = params[:id]
    	redirect_to root_path
    end

 #    def search
 #    	@search = Furniture.where(nil)
	# 	filtering_params(params).each do |key, value|
	# 	@search = @search.public_send(key, value) if value.present?	
	# 	end

	# 	respond_to do |format| 
	# 		format.html
	# 		format.js 
	# 	end 
	# end

	private
	 def find_furniture
      @furniture = Furniture.find(params[:id])
    end

    def furniture_params
      params.require(:furniture).permit(:item, :category, :description, {image:[]})
    end

    def filtering_params(params)
    	params.slice(:item , :category)
    end
end
