Rails.application.routes.draw do
	root to: 'pages#home'

  	scope '/hooks', :controller => :hooks do
  		post :analytics_callback
  	end
end
