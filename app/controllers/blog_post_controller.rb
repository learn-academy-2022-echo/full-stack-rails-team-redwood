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
        @post = BlogPost.create(blog_params)
        if @post.valid?
            redirect_to blog_posts_path
        else
            redirect_to new_blog_post
        end
    end

    def edit
        @post = BlogPost.find(params[:id])
    end

    def update
        @post = BlogPost.find(params[:id])
         @post.update(blog_params)
        if @post.valid?
            redirect_to blog_post_path
        else
            redirect_to edit_blog_post_path
        end
    end

    def destroy
        @post = BlogPost.find(params[:id])
        if @post.destroy
            redirect_to blog_posts_path
        end
    end

    private
    def blog_params
        params.require(:blog_post).permit(:name, :text)
    end
    
end
