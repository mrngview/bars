Rails.application.routes.draw do
 resources :bars do
    collection do                       # collection => no bar id in URL. A collection route doesn't because it acts on a collection of objects.
      get 'top', to: "bars#top"         # barsController#top
    end
    member do                             # member => bar id in URL. A member route will require an ID, because it acts on a member.
      get 'chef', to: "bars#chef"         # barsController#chef
    end
    resources :reviews, only: [:new, :create, :index]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
