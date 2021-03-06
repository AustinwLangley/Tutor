Rails.application.routes.draw do

#report routes
root "reports#index"
get "reports/" => "reports#index"
get "reports/new" => "reports#new", as: :new_report
get "reports/:id" => "reports#show", as: :report
post "reports/" => "reports#create"
get "reports/:id/edit" => "reports#edit", as: :edit_report
patch "reports/:id" => "reports#update"
delete "reports/:id" => "reports#destroy"


#tutor routes
get "tutors" => "tutors#index"
post "tutors" => "tutors#create"
get "signup" => "tutors#new"

#login routes
get "/login" => "sessions#new"
post "/login" => "sessions#create"
delete "/logout" => "sessions#destroy"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
