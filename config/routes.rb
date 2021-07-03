Rails.application.routes.draw do
  get "/books/:id" => "books#show"
  delete "/books/:id" => "books#destroy"
  resources :publishers do
    resources :books　#外部キーが全て必要となる親子関係が明示的に
    member do 
      get "detail" #publishers/idに対してアクションを設置
    end
    collection do
      get "search" #publishersに対してアクションを設置できる
    end
  end
end
