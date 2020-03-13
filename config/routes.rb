Rails.application.routes.draw do
  root 'root#index'
  get 'root/company', to: 'root#company'
  get 'root/lifesupport', to: 'root#lifesupport'
  get 'root/recovery', to: 'root#recovery'
  get 'root/cleaning', to: 'root#cleaning'
  get 'root/performance', to: 'root#performance'
  get 'root/info', to: 'root#info'
  get 'root/plan', to: 'root#plan'
end
