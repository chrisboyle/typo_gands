class ProductionsController < ContentController
	layout :theme_layout
	helper :production

	def index
		@productions = Production.all
		render :text => 'Not found', :status => 404 unless @productions.any?
	end

	def show
		@production = Production.find_by_folder(params[:folder])
		render :text => 'Not found', :status => 404 unless @production
	end
end
