Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'trainer/area'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'trainer/name'
    end
  end

  namespace :api do
    namespace :v1 do
      
    end
  end

  namespace :api do
    namespace :v1 do
      
      get 'info/areas'


      #  area as params[:area]
      get 'gyms/area'
      # get 'info/areas/{id}'

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
