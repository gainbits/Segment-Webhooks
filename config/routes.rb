Rails.application.routes.draw do
  scope '/hooks', :controller => :hooks do
  	post :analytics_callback
  end
end
