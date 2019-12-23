class ArticlesController < ApplicationController
  def index
    @article = Article.new
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      @articles = Article.all
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
  end

  def edit
    @article = Article.find(params[:id])
    respond_to do |format|
      format.js
      format.html
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
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
