Rails.application.routes.draw do |map|
	map.connect 'archives/productions', :controller => :productions, :action => :index
	map.connect 'archives/productions/:folder', :controller => :productions, :action => :show
	map.connect 'archives/committees', :controller => :committees, :action => :index
	map.connect 'archives/committees/:year', :controller => :committees, :action => :show
end
