class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_featured_post, only: [:index, :search]
  before_action :authenticate_user!, only: [:new, :my_posts, :edit, :create, :update, :destroy]
  after_action :verify_authorized

  # GET /posts
  def index
    @posts = Post.unfeatured.order(created_at: :desc).paginate(page: page, per_page: per_page)
    authorize Post
  end

  # GET /posts/my_posts
  def my_posts
    @featured_post = Post.user_featured(current_user).first
    @posts = Post.user_unfeatured(current_user).order(created_at: :desc).paginate(page: page, per_page: per_page)
    authorize Post, :index?
    respond_to do |format|
      format.html {render 'index'}
      format.json {render 'index'}
      format.xml {render 'index'}
    end
  end

  # GET /posts/search
  def search
    @posts = Post.search(:title, params[:q]).order(created_at: :desc).paginate(page: page, per_page: per_page)
    authorize Post, :index?
    respond_to do |format|
      format.html {render 'index'}
      format.json {render 'index'}
      format.xml {render 'index'}
    end
  end

  # GET /posts/1
  def show
    authorize @post
    respond_to do |format|
      format.html {}
      format.json {@post}
      format.xml {@post}
    end
  end

  # GET /posts/new
  def new
    @post = current_user.posts.new
    authorize @post
  end

  # GET /posts/1/edit
  def edit
    authorize @post
  end

  # POST /posts
  def create
    @post = current_user.posts.new(post_params)
    authorize @post

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
        format.xml { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.xml { render xml: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  def update
    authorize @post
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
        format.xml { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.xml { render xml: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  def destroy
    authorize @post
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
      format.xml { head :no_content }
    end
  end

  private

    def per_page
      if params[:per_page]
        params[:per_page].to_i < 10 ? params[:per_page].to_i : 10
      else
        9
      end
    end

    def page
      params[:page] || 1
    end

    def set_featured_post
      @featured_post = Post.featured.first
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :q)
    end
end
