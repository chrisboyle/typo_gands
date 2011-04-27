class CommitteesController < ContentController
	layout :theme_layout

	def index
		@committees = Committee.all
	end

	def show
		@committee = Committee.find_by_year(params[:year])
		render :text => 'Not found', :status => 404 unless @committee
	end
end
