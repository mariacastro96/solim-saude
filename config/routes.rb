Rails.application.routes.draw do
  scope "(:locale)", locale: /pt|en/ do
    root to: 'pages#home'
    get 'solim', to: 'pages#solim'
    get 'project', to: 'pages#project'
    get 'questions', to: 'pages#questions'
   end
end
