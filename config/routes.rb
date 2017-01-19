Rails.application.routes.draw do
  resources :bars do
    collection do                       # collection => no bar id in URL. Gives something like GET /restaurants/top
      get 'top', to: "bars#top"         # barsController#top
    end
    member do                             # member => bar id in URL
      get 'chef', to: "bars#chef"         # barsController#chef
    end
  end
end
