Rails.application.routes.draw do
	resources :elections, :only => [:show] do
		resources :options, :only => [:index, :show]
		resources :choices, :only => [:create]
	end
end
