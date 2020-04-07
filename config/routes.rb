Rails.application.routes.draw do
  root 'root#index'
  get 'root/company', to: 'root#company'
  get 'root/lifesupport', to: 'root#lifesupport'
  get 'root/recovery', to: 'root#recovery'
  get 'root/cleaning', to: 'root#cleaning'
  get 'root/performance', to: 'root#performance'
  get 'root/info', to: 'root#info'
  post 'root/confirm' ,to: 'root#confirm'   # 確認画面
  post 'root/thanks',to: 'root#thanks'     # 送信完了画面
  get 'root/plan', to: 'root#plan'
end
