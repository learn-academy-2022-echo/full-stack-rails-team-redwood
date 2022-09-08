class BlogPostController < ApplicationController
    def home
    end
    def index
        @posts = BlogPost.all
    end
    def show
        @post = BlogPost.find(params[:id])
    end
    def new
        @post = BlogPost.new
    end    
    def create
        @post = BlogPost.create name:params[:name], text:params[:text]
    end
    
end
