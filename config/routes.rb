Rails.application.routes.draw do
  root 'blog_post#index'
  get 'posts' => 'blog_post#index', as: 'posts'
  get 'posts/new' => 'blog_post#new', as: 'new_post'
  get 'post/:id' => 'blog_post#show', as: 'post'
  post 'posts' => 'blog_post#create'
end
