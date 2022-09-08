Rails.application.routes.draw do
  root 'blog_post#index'
  get 'posts' => 'blog_post#index', as: 'blog_posts'
  get 'posts/new' => 'blog_post#new', as: 'new_blog_post'
  get 'posts/:id' => 'blog_post#show', as: 'blog_post'
  post 'posts' => 'blog_post#create'
  get 'posts/edit/:id' => 'blog_post#edit', as: 'edit_blog_post'
  patch 'posts/:id' => 'blog_post#update'
  delete 'posts/:id' => 'blog_post#destroy', as: 'delete_blog_post'
end
