Testapp::Application.routes.draw do
  root :to => "dashboard#index"
  match 'search' => 'dashboard#search'
end
