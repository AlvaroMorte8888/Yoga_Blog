Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about' #get - для обработки других страниц.

  resources :posts do #создаем REST- архитектуру. Отслеживание URL адресов в нутри других URL адресов.
    resources :comments
  end   
end
