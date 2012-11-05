MadeitFrontpage::Application.routes.draw do

  namespace :store do  namespace :manager do  namespace :policies do resources :payments end end end

  namespace :store do  namespace :manager do  namespace :policies do resources :deliveries end end end

  namespace :store do  namespace :manager do  namespace :indices do resources :statuses end end end

  namespace :store do  namespace :manager do  namespace :indices do resources :users end end end

  namespace :store do  namespace :manager do  namespace :indices do resources :guides end end end

  namespace :home do  namespace :categories do  namespace :products do  namespace :indices do resources :users end end end end

  namespace :home do  namespace :categories do  namespace :products do  namespace :indices do resources :shops end end end end

  namespace :home do  namespace :categories do  namespace :products do  namespace :indices do resources :carts end end end end

  namespace :home do  namespace :categories do  namespace :products do  namespace :indices do resources :likes end end end end

  namespace :home do  namespace :categories do  namespace :products do  namespace :indices do resources :policies end end end end

  namespace :home do  namespace :categories do  namespace :products do  namespace :indices do resources :descriptions end end end end

  namespace :home do  namespace :categories do  namespace :products do  namespace :indices do resources :photos end end end end

  namespace :home do  namespace :cart do  namespace :indices do resources :products end end end

  namespace :home do  namespace :cart do resources :fails end end

  namespace :home do  namespace :cart do resources :successes end end

  namespace :home do  namespace :cart do resources :information end end

  namespace :home do  namespace :cart do resources :indices end end

  namespace :stores do resources :reports end

  namespace :home do  namespace :categories do  namespace :products do resources :reports end end end

  namespace :home do  namespace :categories do  namespace :products do resources :indices end end end

  namespace :store do  namespace :manager do  namespace :messages do  namespace :folders do resources :messages end end end end

  namespace :store do  namespace :manager do  namespace :messages do resources :unreads end end end

  namespace :store do  namespace :manager do  namespace :messages do resources :reads end end end

  namespace :store do  namespace :manager do  namespace :messages do resources :folders end end end

  namespace :store do  namespace :manager do resources :messages end end

  namespace :store do  namespace :manager do resources :promotions end end

  namespace :store do  namespace :manager do resources :ads end end

  namespace :store do  namespace :manager do resources :statistics end end

  namespace :store do  namespace :manager do  namespace :products do resources :reviews end end end

  namespace :store do  namespace :manager do resources :reviews end end

  namespace :store do  namespace :manager do resources :orders end end

  namespace :store do  namespace :manager do  namespace :products do resources :adds end end end

  namespace :store do  namespace :manager do resources :products end end

  namespace :store do  namespace :manager do resources :policies end end

  namespace :store do  namespace :manager do resources :settings end end

  namespace :store do  namespace :manager do resources :indices end end

  namespace :store do resources :registers end

  namespace :store do  namespace :policies do resources :information end end

  namespace :store do  namespace :policies do resources :ads end end

  namespace :store do resources :policies end

  namespace :store do  namespace :indices do resources :products end end

  namespace :store do  namespace :indices do  resources :information  end  end

  namespace :store do  namespace :indices do  resources :ads  end  end

  namespace :store do  resources :indices  end

  namespace :home do  resources :stores  end

  namespace :home do  resources :promotions  end

  namespace :home do  resources :events  end

  namespace :home do  namespace :searches do  resources :ads  end  end

  namespace :home do  namespace :searches do  resources :products  end  end

  namespace :home do  namespace :searches do  resources :messages  end  end

  namespace :home do  namespace :categories do  resources :products  end  end

  namespace :home do  namespace :categories do  resources :subs  end  end

  namespace :home do  namespace :categories do  resources :categories  end  end

  namespace :home do  namespace :indices do  resources :ads  end  end

  namespace :home do  namespace :indices do  resources :shops  end  end

  namespace :home do  namespace :indices do  resources :categories  end  end

  namespace :home do  namespace :indices do  resources :products  end  end

  namespace :home do  namespace :indices do  resources :categories  end  end

  namespace :home do  resources :indices  end

  namespace :home do  resources :categories  end

  namespace :home do  resources :searches  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
