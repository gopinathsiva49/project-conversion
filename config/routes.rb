Rails.application.routes.draw do
root "projects#index"

resources :projects, only: [:index, :show, :update] do
  member do
    patch :update_status
  end
  resources :conversations, only: [:create]
end

end
