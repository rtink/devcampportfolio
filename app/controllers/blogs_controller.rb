class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]

  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)
      if @blog.save
        flash[:success] = "Your blog is now live!"
        redirect_to @blog 
      else
        render 'new'
      end
  end

  def update
      if @blog.update(blog_params)
        flash[:warning] = 'Post was successfully updated.'
        redirect_to @blog 
      else
        render 'edit'
      end
  end

  def destroy
    @blog.destroy
    flash[:danger] = 'Post was deleted.'
    redirect_to blogs_url
  end
  
  def toggle_status
    if @blog.draft?
      @blog.published!
    elsif @blog.published?
      @blog.draft!
    end
    flash[:info] = 'Post status has been updated.'
    redirect_to blogs_url
  end

  private

    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end
