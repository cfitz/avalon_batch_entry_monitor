AvalonBatchEntryMonitor::Engine.routes.draw do

  resources :batch_entries, only: [:index], path: '/'

end
