Rails.application.routes.draw do
  root 'catalog#page'
  get 'catalog/page'
  get 'product/:id', to: 'catalog#product'
  get "filter_products", to: 'catalog#filter_products'

  namespace :admin do
    resources :products
  end

  get "admin", to: redirect('/admin/products')

end
