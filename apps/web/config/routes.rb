# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

# resourcesにしないとnew_items_pathってerbにかけない
# get '/items', to: 'items#index'
# get '/items/new', to: 'items#new'
# post '/items', to: 'items#create'

root to: 'items#index'
resources :items, only: %i[index new create destroy]
