Rails.application.routes.draw do
	match 'archives/productions', :to => 'productions#index'
	match 'archives/productions/:folder', :to => 'productions#show'
	match 'archives/committees', :to => 'committees#index'
	match 'archives/committees/:year', :to => 'committees#show'
end
