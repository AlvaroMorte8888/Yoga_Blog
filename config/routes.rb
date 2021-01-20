Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about' #get - для обработки других страниц.

  resources :posts #создаем REST- архитектуру.
end
