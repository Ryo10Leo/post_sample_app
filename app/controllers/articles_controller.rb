class ArticlesController < ApplicationController

  include ArticlesHelper

  def index
    @article = Article.new
    @recent_entries = Article.recent_article
    @categories = Category.all
    if params[:category_id]
      @selected_category = Category.find(params[:category_id])
      @articles= Article.from_category(params[:category_id]).paginate(page: params[:page], per_page: 2)
    else
      @articles= Article.all.paginate(page: params[:page], per_page: 2)
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    category_list = params[:category_list].split(",")
    if @article.save
      @article.save_categories(category_list)
      @articles= Article.all.paginate(page: params[:page], per_page: 2)
      @recent_entries = Article.recent_article
      @categories = Category.all
      respond_to do |format|
        format.js
        format.html
      end
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
    @recent_entries = Article.recent_article
    @categories = Category.all
  end

  def edit
    @article = Article.find(params[:id])
    @category_list = @article.categories.pluck(:name).join(",")
    respond_to do |format|
      format.js
      format.html
    end
  end

  def update
    @article = Article.find(params[:id])
    category_list = params[:category_list].split(",")
    if @article.update_attributes(article_params)
      @article.save_categories(category_list)
      remove_not_used_cat
      @recent_entries = Article.recent_article
      @categories = Category.all
      respond_to do |format|
        @articles = Article.all
        format.js
        format.html{redirect_to articles_url}
      end
    else
      render 'edit'
    end
  end

  def destroy
    Article.find(params[:id]).destroy
    remove_not_used_cat
    redirect_to articles_url
  end

  private

    def article_params
      params.require(:article).permit(:title, :content)
    end

    def logged_in_user
      unless logged_in?
        flash[:danger] = "投稿機能を利用する場合は、ログインしてください。"
        redirect_to login_url
      end
    end
end
