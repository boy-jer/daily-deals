Dailydeals::Application.routes.draw do

  resources :payment_methods

  resources :coupons

  resources :locations
  
  resources :businesses

  resources :sales

  resources :deals do
    collection do
      get 'current'
    end
  end
  
  devise_for :users do
    get "/users/login" => "devise/sessions#new"
    get "/users/logout" => "devise/sessions#destroy"
  end

  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
  end
  
  #Static routes
  match "/contact",     :to => "pages#contact",                    :as => :contact
  match "/howitworks",  :to => "pages#show", :id => "howitworks",  :as => :howitworks
  match "/faq",         :to => "pages#show", :id => "faq",         :as => :faq
  match "/termsofsale", :to => "pages#show", :id => "termsofsale", :as => :termsofsale
  match "/termsofuse",  :to => "pages#show", :id => "termsofuse",  :as => :termsofuse
  match "/privacy",     :to => "pages#show", :id => "privacy",     :as => :privacy
  
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "deals#current"

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

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
