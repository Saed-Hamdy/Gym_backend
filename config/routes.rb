Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'access/login'
      post 'access/attempt_login'
      get 'access/logout'
      get'access/menu'
      
    end
  end

  # namespace :api do
  #   namespace :v1 do
  #     get 'trainers/index'
  #   end
  # end

  namespace :api do
    namespace :v1 do
      
      get 'info/areas'


      # trainer requests

      get 'trainers/name'

      resources :trainers

      #gym requests

      #  area as params[:area]
      get 'gyms/area'
      #  area as params[:name]
      get 'gyms/name'


      resources :gyms do
        resources :classes
      end 


    end
  end

  # namespace :api do
  #   namespace :v1 do
  #     get 'gyms/show'
  #   end
  # end

 # /api/v1/gym_home/index
  namespace :api do
    namespace :v1 do
      get 'gym_home/index'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
