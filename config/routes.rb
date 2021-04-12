Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do  
  
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    devise_for :users
    resources :users
    root to: 'pages#home'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end

end
