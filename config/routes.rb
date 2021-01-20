Rails.application.routes.draw do
  root 'posts#index'
  get 'about' => 'pages#about' #get - для обработки других страниц.

  resources :posts #создаем REST- архитектуру.
end
