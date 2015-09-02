Rails.application.routes.draw do

  resources :dishes, except: [:index]
  root 'dishes#index'

end

#      Prefix Verb   URI Pattern                Controller#Action
#  dishes_new GET    /dishes/new(.:format)      dishes#new
# dishes_show GET    /dishes/show(.:format)     dishes#show
#      dishes GET    /dishes(.:format)          dishes#index
#             POST   /dishes(.:format)          dishes#create
#    new_dish GET    /dishes/new(.:format)      dishes#new
#   edit_dish GET    /dishes/:id/edit(.:format) dishes#edit
#        dish GET    /dishes/:id(.:format)      dishes#show
#             PATCH  /dishes/:id(.:format)      dishes#update
#             PUT    /dishes/:id(.:format)      dishes#update
#             DELETE /dishes/:id(.:format)      dishes#destroy
#        root GET    /                          dishes#index 
