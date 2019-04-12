  Rails.application.routes.draw do
  devise_for :users

  root    'tweets#index'     #ツイート一覧画面
resources :tweets do
  resources :comments,only: [:create]
end
resources :users, only: [:show]

end 
