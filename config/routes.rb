Rails.application.routes.draw do
  get 'robot/orders'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/api/robot/0/orders" => "robot#orders"
end
