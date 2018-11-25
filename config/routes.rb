Rails.application.routes.draw do
  scope "(:locale)", locale: /pt|en/ do
    root to: 'pages#home'
   end
end
