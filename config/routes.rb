Rails.application.routes.draw do
  # GET about
  get 'about', to: "about#index"
  # GET sita page
  get 'sita', to: "sita#index"

  root to: "main#index"
end
