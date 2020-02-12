Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: 'application#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # Category
      get '/categories' => 'category#index', :as => 'category_index', defaults: { format: :json }
      post '/categories/create' => 'category#create', :as => 'category_create', defaults: { format: :json }
      put '/categories/:id' => 'category#update', :as => 'category_update', defaults: { format: :json }
      patch '/categories/:id' => 'category#update', defaults: { format: :json }

      # Vertical
      get '/verticals' => 'vertical#index', :as => 'vertical_index', defaults: { format: :json }
      post '/verticals/create' => 'vertical#create', :as => 'vertical_create', defaults: { format: :json }
      put '/verticals/:id' => 'vertical#update', :as => 'vertical_update', defaults: { format: :json }
      patch '/verticals/:id' => 'vertical#update', defaults: { format: :json }

      # Course
      get '/courses' => 'course#index', :as => 'course_index', defaults: { format: :json }
      post '/courses/create' => 'course#create', :as => 'course_create', defaults: { format: :json }
      put '/courses/:id' => 'course#update', :as => 'course_update', defaults: { format: :json }
      patch '/courses/:id' => 'course#update', defaults: { format: :json }
    end
  end

end
