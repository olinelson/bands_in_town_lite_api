Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do

    namespace :v1 do
     
    get '/artists/search', to: 'artists#search'  

    get '/events/search', to: 'events#search_by_artist_name'
    
    resources :artists, :events

    
    end
  end

end
