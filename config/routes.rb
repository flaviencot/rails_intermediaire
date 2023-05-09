Rails.application.routes.draw do
  get 'static_pages/home'
  get '/static_pages/contact', to: 'static_pages#contact'
  get '/static_pages/team', to: 'static_pages#team'
  get 'welcome/:name'=> 'static_pages#home'
  get '/:author_name'=> 'static_pages#gossip'
  get 'author/:author_name' => 'home#infos'
end


